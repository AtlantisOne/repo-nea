# 6_5_task

class Stationery:
    def __init__(self, title='инструмент'):
        self.title = title

    def draw(self):
        return 'Запуск отрисовки'


class Pen(Stationery):
    def draw(self):
        return f'Отрисовка, используя {self.title}'


class Pencil(Stationery):
    def draw(self):
        return f'Отрисовка, используя {self.title}'


class Handle(Stationery):
    def draw(self):
        return f'Отрисовка, используя {self.title}'


my_pen = Pen('ручку')
my_pencil = Pencil('карандаш')
my_handle = Handle('маркер')

print(my_pen.draw())
print(my_pencil.draw())
print(my_handle.draw())
