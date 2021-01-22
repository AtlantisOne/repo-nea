# 4_1_task

from sys import argv

first_param, second_param, third_param = argv[1:]


def salary_calculation(hour, cost, percent):
    hour = int(hour)
    cost = int(cost)
    percent = int(percent)
    return (hour * cost) + (hour * cost) * (percent / 100)


print("Выработка в часах:", first_param)
print("Ставка в рублях:", second_param)
print("Премия в процентах от зарплаты:", third_param)

print(f"Зарплата с премией {third_param}% от зарплаты: {salary_calculation(first_param, second_param, third_param)}")
