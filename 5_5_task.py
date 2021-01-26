# 5_5_task

with open('task5_5.txt', 'w') as file_object:

    file_object.write('1 2 3 4 5 6 7 8 9')

with open('task5_5.txt') as file_object:
    a = file_object.readline().split()
    result = sum([int(item) for item in a])
    print(result)
