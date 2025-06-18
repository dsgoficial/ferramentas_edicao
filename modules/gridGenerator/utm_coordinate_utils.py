# -*- coding: utf-8 -*-
"""
/***************************************************************************
 ferramentas_edicao
                                 A QGIS plugin
 Brazilian Army Cartographic Finishing Tools
                              -------------------
 ***************************************************************************/
/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
"""

class UTM:
    """
    A class to represent UTM grid coordinates with proper formatting.
    
    Attributes:
        x (float): Easting coordinate
        y (float): Northing coordinate
    """
    
    # Unicode superscript characters for formatting
    SUPERSCRIPT_CHARS = {
        '0': '\u2070',
        '1': '\u00B9', 
        '2': '\u00B2',
        '3': '\u00B3',
        '4': '\u2074',
        '5': '\u2075',
        '6': '\u2076',
        '7': '\u2077',
        '8': '\u2078',
        '9': '\u2079'
    }
    
    def __init__(self, x, y, grid_spacing=1000, coord_display=None):
        """
        Initialize UTM coordinate.
        
        Args:
            x (float): Easting coordinate
            y (float): Northing coordinate
            grid_spacing (int): Grid spacing for coordinate formatting (default: 1000)
            coord_display (str): Display type - 'easting', 'northing', or None for basic format
        """
        self.x = float(x)
        self.y = float(y)
        self.grid_spacing = grid_spacing
        self.coord_display = coord_display
    
    def __str__(self):
        """
        String representation of UTM coordinates based on coord_display setting.
        
        Returns:
            str: Formatted coordinate string
        """
        if self.coord_display is None:
            # Basic format without suffix
            return f"{int(self.x)}"
        else:
            return self.format_coordinate(self.coord_display, show_suffix=True, grid_spacing=self.grid_spacing)
    
    def __repr__(self):
        """
        Developer-friendly representation.
        
        Returns:
            str: UTM(x, y, grid_spacing, coord_display) format
        """
        return f"UTM({self.x}, {self.y}, grid_spacing={self.grid_spacing}, coord_display={repr(self.coord_display)})"
    
    def _to_superscript(self, text):
        """
        Convert regular digits to superscript Unicode characters.
        
        Args:
            text (str): Text to convert
            
        Returns:
            str: Text with superscript digits
        """
        result = ""
        for char in text:
            if char in self.SUPERSCRIPT_CHARS:
                result += self.SUPERSCRIPT_CHARS[char]
            else:
                result += char
        return result
    
    def format_easting(self, show_suffix=True, grid_spacing=1000):
        """
        Format the easting coordinate with superscript styling and suffix.
        
        Args:
            show_suffix (bool): Whether to show 'm' and 'E' suffix
            grid_spacing (int): Grid spacing for determining superscript formatting
            
        Returns:
            str: Formatted easting coordinate
        """
        coord_str = str(int(self.x))
        
        if coord_str == "0":
            formatted = coord_str
        else:
            # Convert to superscript except for last 4-5 digits (based on original code logic)
            coord_list = list(coord_str)
            for i in range(len(coord_list)):
                # Keep last 4-5 digits normal, make others superscript
                if not (i == len(coord_list) - 5 or i == len(coord_list) - 4):
                    if coord_list[i] in self.SUPERSCRIPT_CHARS:
                        coord_list[i] = self.SUPERSCRIPT_CHARS[coord_list[i]]
            formatted = "".join(coord_list)
        
        if show_suffix:
            formatted += "\u1d50"  # Superscript 'm'
            formatted += "E"       # Easting indicator
            
        return formatted
    
    def format_northing(self, show_suffix=True, grid_spacing=1000):
        """
        Format the northing coordinate with superscript styling and suffix.
        
        Args:
            show_suffix (bool): Whether to show 'm' and 'N' suffix
            grid_spacing (int): Grid spacing for determining superscript formatting
            
        Returns:
            str: Formatted northing coordinate
        """
        coord_str = str(int(self.y))
        
        if coord_str == "0":
            formatted = coord_str
        else:
            # Convert to superscript except for last 4-5 digits
            coord_list = list(coord_str)
            for i in range(len(coord_list)):
                # Keep last 4-5 digits normal, make others superscript
                if not (i == len(coord_list) - 5 or i == len(coord_list) - 4):
                    if coord_list[i] in self.SUPERSCRIPT_CHARS:
                        coord_list[i] = self.SUPERSCRIPT_CHARS[coord_list[i]]
            formatted = "".join(coord_list)
        
        if show_suffix:
            formatted += "\u1d50"  # Superscript 'm'
            formatted += "N"       # Northing indicator
            
        return formatted
    
    def format_coordinate(self, coord_type="easting", show_suffix=True, grid_spacing=1000):
        """
        Format either easting or northing coordinate.
        
        Args:
            coord_type (str): Either "easting" or "northing"
            show_suffix (bool): Whether to show 'm' and directional suffix
            grid_spacing (int): Grid spacing for formatting
            
        Returns:
            str: Formatted coordinate
        """
        if coord_type.lower() == "easting":
            return self.format_easting(show_suffix, grid_spacing)
        elif coord_type.lower() == "northing":
            return self.format_northing(show_suffix, grid_spacing)
        else:
            raise ValueError("coord_type must be 'easting' or 'northing'")
    
    def get_coordinates(self):
        """
        Get the raw coordinates as a tuple.
        
        Returns:
            tuple: (x, y) coordinates
        """
        return (self.x, self.y)


# Example usage and testing
if __name__ == "__main__":
    # Create UTM coordinate with default parameters
    utm_coord = UTM(651000, 7234000)
    
    # Basic string representation (no suffix)
    print("Basic format:", utm_coord)  # Output: 651000
    
    # Create UTM coordinate with easting display
    utm_easting = UTM(651000, 7234000, coord_display="easting")
    print("Easting display:", utm_easting)  # Output: formatted easting with suffix
    
    # Create UTM coordinate with northing display
    utm_northing = UTM(651000, 7234000, coord_display="northing")
    print("Northing display:", utm_northing)  # Output: formatted northing with suffix
    
    # Create with custom grid spacing
    utm_custom = UTM(651000, 7234000, grid_spacing=500, coord_display="easting")
    print("Custom grid spacing:", utm_custom)
    
    # Developer representation
    print("Repr:", repr(utm_coord))
    print("Repr with easting:", repr(utm_easting))
    
    # Manual formatting (still available)
    print("Manual easting format:", utm_coord.format_easting())
    print("Manual northing format:", utm_coord.format_northing())
    
    # Formatted without suffix
    print("Easting without suffix:", utm_coord.format_easting(show_suffix=False))
    
    # Using generic format method
    print("Generic easting format:", utm_coord.format_coordinate("easting"))
    print("Generic northing format:", utm_coord.format_coordinate("northing"))
    
    # Get raw coordinates
    print("Raw coordinates:", utm_coord.get_coordinates())
    
    # Demonstrate different coord_display options
    coord = UTM(651000, 7234000)
    print("\nDifferent display options:")
    print("None (basic):", coord)
    
    coord.coord_display = "easting"
    print("Easting:", coord)
    
    coord.coord_display = "northing" 
    print("Northing:", coord)
    
    coord.coord_display = None
    print("Back to basic:", coord)
