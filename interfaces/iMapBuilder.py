from abc import ABC, abstractmethod

class IMapBuilder(ABC):

    @abstractmethod
    def setParams(self, jsonData, connection, compositions, mapAreaFeature):
        pass

    @abstractmethod
    def buildComponents(self):
        pass
    
    @abstractmethod
    def run(self):
        pass