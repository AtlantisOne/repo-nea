# 8_4_task - 8_6_task
class Storage:
    def __init__(self):
        self._dict = {}

    def add_to(self, equipment):
        self._dict.setdefault(equipment.group_name(), []).append(equipment)


class Equipment:
    obj_id = 0

    def __init__(self, vendor, model, price):
        self.vendor = vendor
        self.model = model
        self.price = price
        self.group = self.__class__.__name__
        Equipment.obj_id += 1

    def group_name(self):
        return f'{self.group}'

    def __repr__(self):
        return f'ID:{self.obj_id}, Вендор:{self.vendor}, Модель:{self.model}, Цена:{self.price} руб'


class Printer(Equipment):
    def __init__(self, is_color, vendor, model, price):
        super().__init__(vendor, model, price)
        self.is_color = is_color

    def __repr__(self):
        return f'ID:{self.obj_id}, Цветной:{self.is_color}, Вендор:{self.vendor}, Модель:{self.model}, Цена:{self.price} руб'


class Scaner(Equipment):
    def __init__(self, serial, vendor, model, price):
        super().__init__(vendor, model, price)
        self.serial = serial

    def __repr__(self):
        return f'ID:{self.obj_id}, SN:{self.serial}, Вендор:{self.vendor}, Модель:{self.model}, Цена:{self.price} руб'


class Xerox(Equipment):
    def __init__(self, country, vendor, model, price):
        super().__init__(vendor, model, price)
        self.country = country

    def __repr__(self):
        return f'ID:{self.obj_id}, Страна:{self.country}, Вендор:{self.vendor}, Модель:{self.model}, Цена:{self.price} руб'


storage = Storage()
printer = Printer(True, 'sony', 234, 2000)
storage.add_to(printer)
xerox = Xerox('Россия', 'samsung', 2352, 2352)
storage.add_to(xerox)
scaner = Scaner(665652, 'sony', 'FL-22', 5000)
storage.add_to(scaner)
print('Итого в складе', storage._dict)


def new_scaner():
    while True:
        try:
            exit_script = input('Введите инормацию о товаре или напишие q для выхода:')
            if exit_script == 'q':
                print('Итого в складе', storage._dict)
                break
            sn = input(f'Введите серийный номер: ')
            vendor = input(f'Введите вендор: ')
            model = input(f'Введите модель: ')
            price = int(input(f'Введите цену за ед: '))
            scaner = Scaner(sn, vendor, model, price)
            storage.add_to(scaner)
            print('Итого в складе', storage._dict)
        except ValueError:
            print('Недопустимое значение!')


new_scaner()
print('Окончательно в складе', storage._dict)
