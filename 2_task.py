# 2_task

user_answer = int(input('Введите время в секундах: '))

time_hour = user_answer // 3600
time_minute = (user_answer % 3600) // 60
time_second = (user_answer % 3600) % 60

print(f'Время: {time_hour}:{time_minute}:{time_second}')
