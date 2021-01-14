# 4_task

user_answer = int(input('Введите число целое положительное число: '))

number = user_answer % 10
user_answer = user_answer // 10
while user_answer > 0:
    if user_answer % 10 > number:
        number = user_answer % 10
    user_answer = user_answer // 10
print('Наибольшее число равно:', number)
