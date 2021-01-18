# 3_7_task

# Вариант 1, с запросом у пользователя без аргументов функии
def int_func(*args):
    user_answer = input('Введите текст латиницей с пробелами: ')
    print(user_answer.title())


int_func()


# Вариант 2, с аргументом функции
def int_func2(text):
    return print(text.title())


print(int_func2('i like geekbrains'))
