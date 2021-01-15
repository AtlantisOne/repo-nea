# 2_5_task

my_list = [7, 5, 3, 3, 2]
user_number = int(input('Введите число: '))

for number in range(len(my_list)):
    if my_list[number] == user_number:
        my_list.insert(number + 1, user_number)
        break
    elif my_list[number] > user_number and my_list[number + 1] < user_number:
        my_list.insert(number + 1, user_number)
        break
    elif max(my_list) < user_number:
        my_list.insert(0, user_number)
        break
    elif min(my_list) > user_number:
        my_list.append(user_number)
        break

print(f"Результат - {my_list}")
