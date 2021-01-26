# 5_7_task
import json

my_dict = {}
average_profit_dict = {}
average_profit = 0
profit = 0

with open('task5_7.txt', encoding='utf-8') as out_file_object:
    i = 0
    for firm in out_file_object:
        i += 1
        name, firm, income, expenses = firm.split()
        profit = int(income) - int(expenses)
        if profit <= 0:
            i -= 1
        else:
            average_profit += profit
        my_dict[name] = profit
    average_profit /= i
    average_profit_dict['average_profit'] = round(average_profit)
    my_base = print([my_dict, average_profit_dict])

with open('task5_7.json', "w", encoding='utf-8') as write_f:
    js_str = json.dump([my_dict, average_profit_dict], write_f, ensure_ascii=False)

with open('task5_7.json', encoding='utf-8') as read_f:
    data = json.load(read_f)
    print(data)
    print(type(data))
