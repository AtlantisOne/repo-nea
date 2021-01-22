# 4_7_task

from math import factorial


def fact(num):
    for el in range(1, num + 1):
        yield factorial(el)


n = int(input('Введите количество чисел для вычисления факториала: '))
for el in fact(n):
    print(el)
