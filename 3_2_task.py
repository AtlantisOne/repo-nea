# 3_2_task

def second_func(name, surname, age, city, email, tel):
    print(f"Имя - {name}; Фамилия - {surname}; Возраст - {age}; Город - {city}; Email - {email}; Телефон - {tel}")


second_func(name=input('Введите Имя:'), surname=input('Введите Фамилию:'), age=input('Введите Возраст:'),
            city=input('Введите Город:'), email=input('Введите email:'), tel=input('Введите Телефон:'))
