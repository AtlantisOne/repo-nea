# 6_3_task

class Worker:

    def __init__(self, name, surname, position, wage, bonus):
        self.name = name
        self.surname = surname
        self.position = position
        self._income = {"wage": int(wage), "bonus": int(bonus)}


class Position(Worker):

    def get_full_name(self):
        return str(self.name + ' ' + self.surname)

    def get_total_income(self):
        return self._income['wage'] + self._income['bonus']


wrk1 = Position('Вася', 'Пупкин', 'инженер', 10, 5)
print(f'Проверка создания экземпляра класса и его содержимого\n{wrk1.__dict__}')
print(f'У сотрудника {wrk1.get_full_name()} доход с учетом премии: {wrk1.get_total_income()}')
