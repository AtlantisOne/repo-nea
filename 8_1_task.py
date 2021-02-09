# 8_1_task

class Date:
    # Догадывыаюсь, что init тут не нужен
    # def __init__(self, param):
    #     self.param = param

    @classmethod
    def date_to_num(cls, param):
        my_list = [int(el) for el in param.split('-')]
        return my_list

    @staticmethod
    def chek_date(date):
        my_list = [int(el) for el in date.split('-')]

        if my_list[0] in range(1, 31) and my_list[0] != 0:
            print('День верный')
        else:
            print('День неверный')
        if my_list[1] in range(1, 12) and my_list[1] != 0:
            print('Месяц верный')
        else:
            print('Месяц неверный')
        if my_list[2] in range(1, 3000) and my_list[2] != 0:
            print('Год верный')
        else:
            print('Год неверный')


print(Date.date_to_num('02-02-2021'))
Date.chek_date('02-02-2021')
