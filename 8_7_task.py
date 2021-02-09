# 8_7_task

class ComplexDigit:
    def __init__(self, a, b):
        self.a = a
        self.b = b
        j = None

    def __add__(self, other):
        return f'Сложение комплексных чисел: {self.a + other.a}+{self.b + other.b}j'

    def __mul__(self, other):
        x = self.a * other.a - self.b * other.b
        y = self.a * other.b + other.a * self.b
        if y > 0:
            return f'Умножение комплексных чисел: {x}+{y}j'
        else:
            return f'Умножение комплексных чисел: {x} {y}j'


num1 = ComplexDigit(2, 3)
num2 = ComplexDigit(1, 2)
print(num1 + num2)
print(num1 * num2)

# Проверка встроенным функционалом
com1 = complex(2, 3)
com2 = complex(1, 2)
print('Проверка', com1 + com2)
print('Проверка', com1 * com2)
