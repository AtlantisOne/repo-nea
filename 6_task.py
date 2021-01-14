# 6_task

distance_a = int(input('Введите количество километров в первый день: '))
distance_b = int(input('Введите минимальное количество километров: '))

day = 1
while distance_a <= distance_b:
    distance_a = distance_a + distance_a * 0.1
    day += 1
print(f'Спортсмен пройдет {distance_a:.2f} километров через {day} дней')
