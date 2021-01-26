# 5_1_task

print('Введите данные и нажмите enter, по окончании введите q для выхода или пустую строку')
with open('task5_1.txt', 'w') as file_object:
    while True:
        user_answer = input('Введите данные:')
        file_object.writelines(user_answer + '\n')
        if user_answer == '' or user_answer == 'q':
            print('Выход из программы')
            break
