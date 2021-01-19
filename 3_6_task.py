# 3_6_task

# Вариант 1, с запросом у пользователя без аргументов функии
def int_func():
    user_answer = input('Введите текст: ')
    print(user_answer.capitalize())


int_func()


# Вариант 2, с аргументом функции
def int_func2(text):
    print(text.capitalize())


print(int_func2('слово'))


# Вариант 3, с использованием *args
def int_func3(*args):
    letter = input('Введите текст: ')
    print(letter.title())


int_func3()
