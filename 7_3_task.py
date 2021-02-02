# 7_3_task

class Cell:
    def __init__(self, count_cell):
        self.count_cell = int(count_cell)

    def __add__(self, other):
        return f'Объединение двух клеток (сложение): {self.count_cell + other.count_cell}'

    def __sub__(self, other):
        if self.count_cell - other.count_cell > 0:
            return f'Участвуют две клетки (вычитание): {self.count_cell - other.count_cell}'
        else:
            return f'Вычитаниедвух клеток невозможно, так как разность отрицательная: {self.count_cell - other.count_cell}'

    def __mul__(self, other):
        return f'Создается общая клетка из двух (умножение): {self.count_cell * other.count_cell}'

    def __floordiv__(self, other):
        if other.count_cell == 0:
            return 'Нет смысла, если вторая клетка отсутствует'
        else:
            return f'Создается общая клетка из двух (деление): {self.count_cell // other.count_cell}'

    def make_order(self, num):
        my_str = ''
        for i in range(int(self.count_cell / num)):
            my_str += f'{"*" * num} \\n'
        my_str += f'{"*" * (self.count_cell % num)}'
        return my_str


с_1 = Cell(input('Введите количество ячеек: '))
с_2 = Cell(input('Введите количество ячеек: '))
print(с_1 + с_2)
print(с_1 - с_2)
print(с_1 * с_2)
print(с_1 // с_2)
print(с_1.make_order(5))
print(с_2.make_order(5))
