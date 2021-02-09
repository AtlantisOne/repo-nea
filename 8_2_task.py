# 8_2_task

class MyZeroError(Exception):
    def __init__(self, txt):
        self.txt = txt


def my_math():
    while True:
        try:
            num1 = int(input('Введите первое число: '))
            num2 = int(input('Введите второе число: '))
            if num2 == 0:
                raise MyZeroError("Вы ввели ноль, деление недопустимо!")
        except ValueError:
            print("Вы ввели не число")
        except MyZeroError as err:
            print(err)
        else:
            print(f"Все хорошо. Ваш решультат: {num1 / num2}")


my_math()
