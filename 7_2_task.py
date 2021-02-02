# 7_2_task
from abc import ABC, abstractmethod


class Dress(ABC):

    def __init__(self, parameters):
        self.parameters = parameters

    def __add__(self, other):
        return self.parameters + other.parameters

    @abstractmethod
    def expense_textile(self):
        pass


class Coat(Dress):
    @property
    def expense_textile(self):
        return round(self.parameters / 6.5 + 0.5)


class Suit(Dress):
    @property
    def expense_textile(self):
        return round(2 * self.parameters + 0.3)


c = Coat(400)
print('Затраты ткани на пиджак:', c.expense_textile)

s = Suit(55)
print('Затраты ткани на костюм:', s.expense_textile)
print('Общие затраты ткани:', c.expense_textile + s.expense_textile)
