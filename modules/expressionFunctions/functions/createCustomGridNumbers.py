from qgis.core import *
from qgis.gui import *


@qgsfunction(args="auto", group="Custom")
def shortNumber(gridNumber, feature, parent):
    """
    Converts coordinates to "kilometer grid index".
    <h3>Example:</h3>
    <code>shortNumber(123456) -> '23'</code>
    <h3>Tips</h3>
    Try:
    <code>shortNumber( @grid_number )</code>
    """
    gridString = str(int(gridNumber))
    return gridString[len(gridString) - 5 : len(gridString) - 3]


@qgsfunction(args="auto", group="Custom")
def longNumber(gridNumber, feature, parent):
    """
    Converts coordinates to "kilometer grid index" with superscript characters to create a "full" coordinate.
    <h3>Example:</h3>
    <code>longNumber(123456) -> '<sup>1</sup>23<sup>456</sup>'</code>
    <h3>Tips</h3>
    Try:
    <code>longNumber( @grid_number )</code>
    <h3>Unicode Font</h3>
    You need to select a font that supports unicode for this to work.
    """
    gridString = str(int(gridNumber))
    fullString = ""
    supScr = (
        "\u2070",
        "\u00B9",
        "\u00B2",
        "\u00B3",
        "\u2074",
        "\u2075",
        "\u2076",
        "\u2077",
        "\u2078",
        "\u2079",
    )
    charNumber = len(gridString)
    for char in gridString:
        if charNumber == 5 or charNumber == 4:
            fullString += char
        else:
            fullString += supScr[int(char)]
        charNumber -= 1

    return fullString
