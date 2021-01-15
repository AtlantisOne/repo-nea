# 2_6_task

count_items = int(input('Введите количетво товаров, которые необходимо занести в базу: '))

my_list = []
my_list_anal_name = []
my_list_anal_cost = []
my_list_anal_count = []
my_list_anal_unit = []
n = 1
for count in range(count_items):
    user_base = {'название': input('Введите название: '), 'цена': int(input('Введите цену: ')),
                 'количество': int(input('Введите количество: ')), 'ед': input('Введите единицу измерения: ')}
    my_list_anal_name.append(user_base.get('название'))
    my_list_anal_cost.append(user_base.get('цена'))
    my_list_anal_count.append(user_base.get('количество'))
    my_list_anal_unit.append(user_base.get('ед'))
    analytics = {'название': my_list_anal_name, 'цена': my_list_anal_cost, 'количество': my_list_anal_count,
                 'ед': my_list_anal_unit}
    my_list.append((n, user_base))
    n += 1

print(my_list)
print(analytics)
