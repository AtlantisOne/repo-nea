# 8_3_task

class MyIsDigitError(Exception):
    def __init__(self, txt):
        self.txt = txt


def my_digit_list_func():
    my_list = []
    while True:
        try:
            num = input('Введите элемет и нажмите enter или "stop" для выхода: ')
            if num == 'stop':
                break
            elif num.isdigit() == False:
                raise MyIsDigitError("Вы ввели не число, попробуйте заново")


        except MyIsDigitError as err:
            print(err)
        else:
            num = int(num)
            my_list.append(num)
            print(f'Добавление в список: {num}')
        finally:
            print(f'Текущий список{my_list}')


my_digit_list_func()
