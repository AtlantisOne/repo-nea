# 7_1_task
class Matrix:
    def __init__(self, matrix1):
        self.matrix1 = matrix1

    def __add__(self, other):
        if len(self.matrix1) == len(other.matrix1):
            for num in range(len(self.matrix1)):
                for num2 in range(len(other.matrix1[num])):
                    self.matrix1[num][num2] += other.matrix1[num][num2]
            return self
        else:
            return 'Размерности матриц отличаются'

    def __str__(self):
        for i in self.matrix1:
            i = str(i)
            print(i[1:-1].replace(',', ' '))
        return ""


mt1 = Matrix([[1, 2, 3], [4, 5, 6], [7, 2, 4]])
mt2 = Matrix([[4, 5, 2], [3, 3, 3], [2, 2, 2]])
print(mt1 + mt2)
