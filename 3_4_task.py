# 3_4_task.
# Варикнт 1, с оператором **

def my_func(x, y):
    result = x ** y
    return result


print(my_func(2, -2))

# Варикнт 2, с оператором **, с использованием lambda-функции
my_func1 = lambda x, y: x ** y
print(my_func1(2, -2))


# Варикнт 3, решение с помощью цикла
def my_func2(x, y):
    y = abs(y)
    for i in range(y):
        result = x * x
    result = 1 / result
    return result


print(my_func2(2, -2))
