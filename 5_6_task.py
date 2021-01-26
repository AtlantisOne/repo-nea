# 5_6_task

my_dict = {}
my_base = []
with open('task5_6.txt', encoding='utf-8') as out_base_object:
    for word in out_base_object:
        word = word.split(':')
        my_base.append(word[0])
        my_dict[word[0]] = None

    out_base_object.seek(0)

    x = 0
    for word in out_base_object:
        digit = [int(i) for i in word.split(' ') if i.isdigit()]
        digit = sum(digit)
        my_dict[my_base[x]] = digit
        x += 1

    print(my_dict)
