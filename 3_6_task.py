# 3_6_task

# Вариант 1, с запросом у пользователя без аргументов функии
def int_func(*args):
    user_answer = input('Введите текст: ')
    print(user_answer.capitalize())


int_func()


# Вариант 2, с аргументом функции
def int_func2(text):
    print(text.capitalize())


print(int_func2('слово'))
