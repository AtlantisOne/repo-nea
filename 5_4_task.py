# 5_4_task
# Сделал более универсально, то есть возможность задать сопоставление
# в отдельном файле 'task5_4_base.txt', а не в коде программы.

with open('task5_4.txt') as out_file_object:
    with open('task5_4_base.txt', encoding='utf-8') as out_base_object:
        my_base = []
        for i in out_file_object:
            a = out_base_object.readline().split()
            my_base.append(a)
    my_base = dict(my_base)

with open('task5_4.txt') as out_file_object:
    result_file = []
    for word in out_file_object:
        word = word.split(' ')
        result_file.append(my_base.get(word[0]) + ' - ' + word[2])
    with open('task5_4_new.txt', 'w') as file_object2:
        file_object2.writelines(result_file)
