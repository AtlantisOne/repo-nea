# 2_4_task

user_answer = input('Введите несколько слов через пробел: ')

for number, letter in enumerate(user_answer.split(), 1):
    print(number, letter[:10])
