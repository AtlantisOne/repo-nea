# 5_2_task

with open('task5_2.txt') as file_object:
    count_lines = len(file_object.readlines())
    file_object.seek(0)

    num_line = 0
    while True:
        num_line += 1
        line = len(file_object.readline().split())
        print(f'В {num_line} строке количество слов: {line}')
        if num_line == count_lines:
            print(f'Общее количество строк: {count_lines}')
            break
