from abc import ABC, abstractmethod


class IComponent(ABC):
    @abstractmethod
    def build(self, *args, **kwargs):
        pass

    @abstractmethod
    def updateComposition(self, *args, **kwargs):
        pass
