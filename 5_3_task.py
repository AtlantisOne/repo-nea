# 5_3_task

with open('task5_3.txt', encoding='utf-8') as file_object:
    count_lines = len(file_object.readlines())
    file_object.seek(0)
    all_users = []
    num_line = 0
    i = 1
    while True:
        num_line += 1
        users = file_object.readline().split()
        users[i] = float(users[i])
        all_users.append(users)
        if num_line == count_lines:
            all_users = dict(all_users)
            break
    salary = []
    for key, value in all_users.items():
        if value <= 20000:
            salary.append(key)

    print('Оклад меньше 20000 у:', salary)
    print('Средний оклад у сотрудников', round(sum(list(all_users.values()))) / count_lines)
