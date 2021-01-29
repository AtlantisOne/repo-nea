# 6_2_task

class Road:
    def __init__(self, _length, _width):
        self._length = _length
        self._width = _width


class MassRoad(Road):
    def __init__(self, _length, _width, weight, height):
        super().__init__(_length, _width)
        self.weight = weight
        self.height = height

    def MassCount(self):
        return self._length * self._width * self.weight * self.height / 1000


r = MassRoad(20, 5000, 25, 5)
print(f'Для покрытия всей дороги с толщиной {r.height} см. неободимо {int(r.MassCount())} т. асфальта')
