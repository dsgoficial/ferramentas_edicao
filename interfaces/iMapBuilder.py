from abc import ABC, abstractmethod

class IMapBuilder(ABC):

    @abstractmethod
    def removeLayers(self, debugMode):
        pass

    @abstractmethod
    def cleanProject(self, debugMode):
        pass

    @abstractmethod
    def setParams(self, jsonData, connection, compositions, mapAreaFeature):
        pass
    
    @abstractmethod
    def run(self):
        pass