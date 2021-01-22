# 4_6_task

from itertools import count, cycle

# 1 Задача с использованием count
def func_count(start, stop):
    for element in count(start):
        if element > stop:
            break
        else:
            print(element)

func_count(7, 10)

# 2 Задача с использованием cycle
my_list = ['Я', 'люблю', 'GeekBrains', 2021]

def func_cycle(list):
    num = 1
    for element in cycle(list):
        if num > 10:
            break
        num += 1
        print(element)

func_cycle(my_list)
