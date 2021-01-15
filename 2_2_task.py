# 2_2_task

index_list = list(input('Введите слово: '))
i = 0
for count in range(int(len(index_list) / 2)):
    index_list[i], index_list[i + 1] = index_list[i + 1], index_list[i]
    i += 2
print(index_list)
