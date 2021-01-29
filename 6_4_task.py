# 6_4_task

class Car:
    def __init__(self, speed, color, name, is_police=False):
        self.speed = int(speed)
        self.color = color
        self.name = name
        self.is_police = bool(is_police)

    def show_speed(self):
        return f'скорость машины {self.name}: {self.speed} км/ч'

    def go(self):
        return f'Машина {self.name} поехала'

    def stop(self):
        return f'машина {self.name} остановилась'

    def turn(self, direction):
        if direction == 'right':
            return f'машина {self.name} повернула направо'
        elif direction == 'left':
            return f'машина {self.name} повернула налево'
        else:
            return f'продолжила ехать прямо'


class TownCar(Car):
    def show_speed(self):

        if self.speed > 60:
            return f'Превышение! Скорость машины {self.name} выше 60 км/ч'
        else:
            return super().show_speed()


class WorkCar(Car):
    def show_speed(self):
        if self.speed > 40:
            return f'Превышение! Скорость машины {self.name} выше 40 км/ч'
        else:
            return super().show_speed()


class PoliceCar(Car):
    pass


class SportCar(Car):
    pass


pol_car = PoliceCar(65, 'blue', 'PRIORA', True)
print(f'{pol_car.go()}, {pol_car.turn("left")}, {pol_car.show_speed()}, {pol_car.stop()}')

twn_car = TownCar(61, 'green', 'KIA RIO')
print(f'{twn_car.go()}, {twn_car.turn("right")}, {twn_car.show_speed()}, {twn_car.stop()}')

sprt_car = SportCar(161, 'red', 'Toyota Verossa')
print(f'{sprt_car.go()}, {sprt_car.turn("left")}, {sprt_car.show_speed()}, {sprt_car.stop()}')

wrk_car = WorkCar(30, 'red', 'GAZEL')
print(f'{wrk_car.go()}, {wrk_car.turn("jjj")}, {wrk_car.show_speed()}, {wrk_car.stop()}')
