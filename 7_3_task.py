# 7_3_task
class TownCar(Car):
    def show_speed(self):
        if self.speed > 60:
            return f'\nExcess of speed, your speed {self.speed}'
        else:
            super().show_speed()