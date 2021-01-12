# 5_task

proceeds = int(input('Введите выручку: '))
cost = int(input('Введите издержки: '))

if proceeds > cost:
    profitability = proceeds / cost
    print('Фирма приносит прибыль', 'Рентабильность выручки: ', profitability)
    people = int(input('Сколько сотрудников работает? : '))
    print('Прибыль в расчете на одного сотрудника:', (proceeds - cost) / people)

elif proceeds < cost:
    print('Фирма терпит убытки')
elif proceeds == cost:
    print('Фирма работает в 0')
