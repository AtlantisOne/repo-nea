# 6_1_task

# Вариант 1 через цикл for и cycle
import time
from itertools import cycle


class TrafficLight1:
    def __init__(self, __color):
        self.__color = __color

    count = 1

    def running(self):
        for item in cycle(self.__color):
            print(item)
            if item == self.__color[0]:
                time.sleep(7)
            if item == self.__color[1]:
                time.sleep(2)
            if item == self.__color[2]:
                time.sleep(5)


traf_lig = TrafficLight1(['Red', 'Yellow', 'Green'])
traf_lig.running()


# Вариант 2 через цикл while и if
class TrafficLight2:
    def __init__(self, __color):
        self.__color = __color

    count = 1

    def running(self):
        while True:
            if TrafficLight2.count == 1:
                print(self.__color[0])
                time.sleep(7)
                TrafficLight2.count += 1
            if TrafficLight2.count == 2:
                print(self.__color[1])
                time.sleep(2)
                TrafficLight2.count += 1
            if TrafficLight2.count == 3:
                print(self.__color[2])
                time.sleep(5)
                TrafficLight2.count = 1


traf_lig = TrafficLight2(['Red', 'Yellow', 'Green'])
traf_lig.running()
