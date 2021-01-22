# 4_5_task

from functools import reduce

my_list = [num for num in range(100, 1002) if num % 2 == 0]
print(reduce((lambda x, y: x * y), my_list))
