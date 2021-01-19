# 3_1_task
# Не стал использовать if для исключения деления на 0, такой вариант интереснее

def division(num1, num2):
    try:
        total = num1 / num2
    except ZeroDivisionError:
        return print('Введен 0, на н 0 делить нельзя')
    return total


try:
    user_num1 = int(input("Введите первое число: "))
    user_num2 = int(input("Введите второе число: "))
    print(division(user_num1, user_num2))
except ValueError:
    print('Введено не число!')
