from abc import ABC, abstractmethod

class IMapBuilder(ABC):
  
    @abstractmethod
    def run(self):
        pass