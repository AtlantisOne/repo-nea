# 3_3_task

def my_func(a, b, c):
    my_list = []
    summ_list = list([a, b, c])
    for i in range(2):
        my_list.append(max(summ_list))
        summ_list.remove(max(summ_list))
    print('Сумма наибольших двух аргументов равна:', sum(my_list))

user_num1 = int(input("Введите первое число: "))
user_num2 = int(input("Введите второе число: "))
user_num3 = int(input("Введите третье число: "))
my_func(user_num1, user_num2, user_num3)
