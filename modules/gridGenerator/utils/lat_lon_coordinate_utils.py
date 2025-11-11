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
import math

class DMS:
    """
    A class to handle Degree-Minutes-Seconds (DMS) measurements
    with arithmetic operations and proper formatting.
    Supports geographic coordinates with directional indicators.
    """
    
    def __init__(self, degrees=0, minutes=None, seconds=None, coordinate_type=None, seconds_eps=1e-10):
        """
        Initialize DMS object.
        
        Two usage patterns:
        1. From decimal degrees: DMS(40.713056, coordinate_type='latitude')
        2. From DMS components: DMS(40, 42, 46, 'latitude')
        
        Args:
            degrees (int/float): If minutes and seconds are None, treated as decimal degrees.
                                Otherwise, degrees component of DMS.
            minutes (int): Minutes component (optional if using decimal degrees)
            seconds (float): Seconds component (optional if using decimal degrees)
            coordinate_type (str): 'latitude', 'longitude', or None
        """
        self.coordinate_type = coordinate_type
        
        # If minutes and seconds are None, treat degrees as decimal degrees
        if minutes is None and seconds is None:
            self._from_decimal(float(degrees))
        else:
            # Traditional DMS initialization
            self.degrees = int(degrees)
            self.minutes = int(minutes or 0)
            self.seconds = float(seconds or 0)
        if self.seconds - math.floor(self.seconds) < seconds_eps:
            self.seconds = math.floor(self.seconds)
        elif math.ceil(self.seconds) - self.seconds < seconds_eps:
            self.seconds = math.ceil(self.seconds)
        self._normalize()
        
        self._validate_coordinate()
    
    def _from_decimal(self, decimal_degrees):
        """Convert decimal degrees to DMS components"""
        is_negative = decimal_degrees < 0
        decimal_degrees = abs(decimal_degrees)
        
        # Use higher precision arithmetic to minimize floating point errors
        total_seconds = round(decimal_degrees * 3600, 6)  # Convert to total seconds first
        
        # Extract degrees
        degrees_in_seconds = int(total_seconds // 3600)
        remaining_seconds = total_seconds - (degrees_in_seconds * 3600)
        
        # Extract minutes
        minutes_in_seconds = int(remaining_seconds // 60)
        final_seconds = remaining_seconds - (minutes_in_seconds * 60)
        
        self.degrees = degrees_in_seconds
        self.minutes = minutes_in_seconds
        self.seconds = final_seconds
        
        if is_negative:
            self.degrees = -self.degrees
        self._normalize()
    
    def _normalize(self):
        """Normalize the DMS values (e.g., 61 seconds becomes 1 minute 1 second)"""
        # Handle negative seconds
        if self.seconds < 0:
            minutes_to_subtract = int(abs(self.seconds) // 60) + 1
            self.minutes -= minutes_to_subtract
            self.seconds += minutes_to_subtract * 60
        
        # Convert excess seconds to minutes
        if self.seconds >= 60:
            extra_minutes = int(self.seconds // 60)
            self.minutes += extra_minutes
            self.seconds -= extra_minutes * 60
        
        # Handle negative minutes
        if self.minutes < 0:
            degrees_to_subtract = int(abs(self.minutes) // 60) + 1
            self.degrees -= degrees_to_subtract
            self.minutes += degrees_to_subtract * 60
        
        # Convert excess minutes to degrees
        if self.minutes >= 60:
            extra_degrees = int(self.minutes // 60)
            self.degrees += extra_degrees
            self.minutes -= extra_degrees * 60
    
    def _validate_coordinate(self):
        """Validate coordinate ranges for latitude and longitude"""
        decimal_degrees = self.to_decimal_degrees()
        
        if self.coordinate_type == 'latitude':
            if not -90 <= decimal_degrees <= 90:
                raise ValueError(f"Latitude must be between -90° and 90°, got {decimal_degrees}°")
        elif self.coordinate_type == 'longitude':
            if not -180 <= decimal_degrees <= 180:
                raise ValueError(f"Longitude must be between -180° and 180°, got {decimal_degrees}°")
    
    def is_between(self, min_value, max_value, inclusive=True):
        """
        Check if this DMS object is within the specified interval.
        
        Args:
            min_value (DMS, int, float): Minimum value of the interval
            max_value (DMS, int, float): Maximum value of the interval
            inclusive (bool): Whether to include the endpoints (default: True)
        
        Returns:
            bool: True if the value is within the interval
        """
        current_decimal = self.to_decimal_degrees()
        
        # Convert min and max to decimal degrees if they're DMS objects
        if isinstance(min_value, DMS):
            min_decimal = min_value.to_decimal_degrees()
        else:
            min_decimal = float(min_value)
            
        if isinstance(max_value, DMS):
            max_decimal = max_value.to_decimal_degrees()
        else:
            max_decimal = float(max_value)
        
        if inclusive:
            return min_decimal <= current_decimal <= max_decimal
        else:
            return min_decimal < current_decimal < max_decimal
    
    def is_within_bounds(self, south_west, north_east):
        """
        Check if this coordinate is within a geographic bounding box.
        
        Args:
            south_west (tuple): (latitude, longitude) of southwest corner
            north_east (tuple): (latitude, longitude) of northeast corner
                               Each can be DMS object, decimal degrees, or tuple (deg, min, sec)
        
        Returns:
            bool: True if coordinate is within the bounding box
        """
        if self.coordinate_type not in ['latitude', 'longitude']:
            raise ValueError("is_within_bounds() requires coordinate_type to be 'latitude' or 'longitude'")
        
        # Parse southwest corner
        sw_lat, sw_lon = self._parse_coordinate_pair(south_west)
        # Parse northeast corner  
        ne_lat, ne_lon = self._parse_coordinate_pair(north_east)
        
        current_decimal = self.to_decimal_degrees()
        
        if self.coordinate_type == 'latitude':
            return sw_lat <= current_decimal <= ne_lat
        else:  # longitude
            # Handle longitude wrapping around 180°/-180°
            if sw_lon <= ne_lon:
                # Normal case: doesn't cross antimeridian
                return sw_lon <= current_decimal <= ne_lon
            else:
                # Crosses antimeridian (e.g., from 170° to -170°)
                return current_decimal >= sw_lon or current_decimal <= ne_lon
    
    def _parse_coordinate_pair(self, coord_pair):
        """Helper method to parse coordinate pairs in various formats"""
        lat, lon = coord_pair
        
        # Convert latitude
        if isinstance(lat, DMS):
            lat_decimal = lat.to_decimal_degrees()
        elif isinstance(lat, (tuple, list)) and len(lat) == 3:
            lat_decimal = DMS(*lat).to_decimal_degrees()
        else:
            lat_decimal = float(lat)
        
        # Convert longitude
        if isinstance(lon, DMS):
            lon_decimal = lon.to_decimal_degrees()
        elif isinstance(lon, (tuple, list)) and len(lon) == 3:
            lon_decimal = DMS(*lon).to_decimal_degrees()
        else:
            lon_decimal = float(lon)
            
        return lat_decimal, lon_decimal
    
    @staticmethod
    def point_in_bounding_box(latitude, longitude, south_west, north_east):
        """
        Static method to check if a point is within a bounding box.
        
        Args:
            latitude (DMS, float, tuple): Point's latitude
            longitude (DMS, float, tuple): Point's longitude  
            south_west (tuple): (lat, lon) of southwest corner
            north_east (tuple): (lat, lon) of northeast corner
        
        Returns:
            bool: True if point is within the bounding box
        """
        # Convert point coordinates to DMS objects
        if not isinstance(latitude, DMS):
            if isinstance(latitude, (tuple, list)):
                lat_dms = DMS(*latitude, coordinate_type='latitude')
            else:
                lat_dms = DMS(latitude, coordinate_type='latitude')
        else:
            lat_dms = latitude
            
        if not isinstance(longitude, DMS):
            if isinstance(longitude, (tuple, list)):
                lon_dms = DMS(*longitude, coordinate_type='longitude')
            else:
                lon_dms = DMS(longitude, coordinate_type='longitude')
        else:
            lon_dms = longitude
        
        # Check if both coordinates are within bounds
        lat_in_bounds = lat_dms.is_within_bounds(south_west, north_east)
        lon_in_bounds = lon_dms.is_within_bounds(south_west, north_east)
        
        return lat_in_bounds and lon_in_bounds
    
    @staticmethod
    def generate_range(start, end, step, coordinate_type=None, include_end=False):
        """
        Generate a list of DMS objects within a specified range.
        
        Args:
            start (DMS, float, tuple): Starting value
            end (DMS, float, tuple): Ending value (exclusive)
            step (DMS, float, tuple): Increment/step size
            coordinate_type (str): 'latitude', 'longitude', or None
        
        Returns:
            list: List of DMS objects from start to end (exclusive) with given step
        
        Examples:
            # Generate latitudes from 40° to 45° in 1° steps
            DMS.generate_range(40, 45, 1, 'latitude')
            
            # Generate longitudes with DMS step
            start_lon = DMS(-74, 0, 0, 'longitude')
            end_lon = DMS(-73, 0, 0, 'longitude') 
            step_lon = DMS(0, 15, 0)  # 15 minute steps
            DMS.generate_range(start_lon, end_lon, step_lon, 'longitude')
        """
        # Convert inputs to decimal degrees for easier arithmetic
        if isinstance(start, DMS):
            start_decimal = start.to_decimal_degrees()
        elif isinstance(start, (tuple, list)):
            start_decimal = DMS(*start).to_decimal_degrees()
        else:
            start_decimal = float(start)
            
        if isinstance(end, DMS):
            end_decimal = end.to_decimal_degrees()
        elif isinstance(end, (tuple, list)):
            end_decimal = DMS(*end).to_decimal_degrees()
        else:
            end_decimal = float(end)
            
        if isinstance(step, DMS):
            step_decimal = step.to_decimal_degrees()
        elif isinstance(step, (tuple, list)):
            step_decimal = DMS(*step).to_decimal_degrees()
        else:
            step_decimal = float(step)
        
        # Validate step
        if step_decimal == 0:
            raise ValueError("Step cannot be zero")
        
        # Validate direction
        if (end_decimal > start_decimal and step_decimal < 0) or \
           (end_decimal < start_decimal and step_decimal > 0):
            start_decimal, end_decimal = end_decimal, start_decimal
        
        # Generate the range
        result = []
        current = start_decimal
        
        if step_decimal > 0:
            while current < end_decimal:
                result.append(DMS(current, coordinate_type=coordinate_type))
                current += step_decimal
        else:
            while current > end_decimal:
                result.append(DMS(current, coordinate_type=coordinate_type))
                current += step_decimal
        if not include_end:
            return result
        end_point = DMS(end, coordinate_type=coordinate_type)
        if end_point not in result:
            result.append(end_point)
        return result
    
    @staticmethod
    def generate_fixed_grid(start, end, step, fixed_coordinate, grid_type, include_start=False, include_end=False):
        """
        Generate a list of pairwise grid starting from the nearest multiple of step (for instance, minute grid)
        """
        new_start = DMS.get_nearest_item(start, step)
        if grid_type == 'x':
            start = [] if not include_start else [(start, DMS(fixed_coordinate, coordinate_type='longitude'))]
            return start + [
                (x, DMS(fixed_coordinate, coordinate_type='longitude')) for x in DMS.generate_range(
                    new_start, end, step, coordinate_type='longitude', include_end=include_end)
            ]
        if grid_type == 'y':
            start = [] if not include_start else [(DMS(fixed_coordinate, coordinate_type='latitude'), start)]
            return start + [
                (DMS(fixed_coordinate, coordinate_type='latitude'), y) for y in DMS.generate_range(
                    new_start, end, step, coordinate_type='latitude', include_end=include_end)
            ]
        raise ValueError("invalid grid type")
    
    @staticmethod
    def get_nearest_item(item, step):
        """
        Get the nearest item that is larger than the input item and respects the step.
        
        The method finds the next grid position that is strictly greater than the input item
        and aligns with the step grid spacing.
        
        Args:
            item (DMS): The input DMS object
            step (DMS): The step size (grid spacing)
        
        Returns:
            DMS: The nearest larger item that aligns with the step grid
        
        Examples:
            >>> item = DMS(25, 30, 0)
            >>> step = DMS(0, 1, 0)  # 1 minute step
            >>> DMS.get_nearest_item(item, step)
            DMS(25, 31, 0)
            
            >>> item = DMS(25, 31, 15)
            >>> step = DMS(0, 1, 0)  # 1 minute step
            >>> DMS.get_nearest_item(item, step)
            DMS(25, 32, 0)
            
            >>> item = DMS(25, 30, 0)
            >>> step = DMS(1, 0, 0)  # 1 degree step
            >>> DMS.get_nearest_item(item, step)
            DMS(26, 0, 0)
        """
        
        # Convert to decimal degrees for easier calculation
        item_decimal = item.to_decimal_degrees()
        step_decimal = step.to_decimal_degrees()
        
        # Validate step
        if step_decimal <= 0:
            raise ValueError("Step must be positive")
        
        # Find the next multiple of step that is greater than item
        # We divide item by step, take the ceiling, then multiply by step
        steps_needed = math.ceil(item_decimal / step_decimal)
        next_position = steps_needed * step_decimal
        
        # If the calculated position equals the item (within floating point precision),
        # we need to go to the next step to ensure we get a strictly larger value
        if abs(next_position - item_decimal) < 1e-10:
            next_position = (steps_needed + 1) * step_decimal
        
        # Create and return the DMS object, preserving the coordinate type
        return DMS.from_decimal_degrees(next_position, item.coordinate_type)
    
    @staticmethod
    def generate_grid(x_range, y_range, x_step, y_step, output_as_dms=True, fixed_grid=False):
        """
        Generate a grid of coordinate points within specified latitude and longitude ranges.
        
        Args:
            x_range (tuple): (start_x, end_x) in any supported format
            y_range (tuple): (start_y, end_y) in any supported format  
            x_step (DMS, float, tuple): x step size
            y_step (DMS, float, tuple): y step size
        
        Returns:
            list: List of tuples containing (latitude_DMS, longitude_DMS) pairs
        
        Example:
            # Generate a 5x5 grid around NYC
            x_range = (40.5, 40.9)
            y_range = (-74.2, -73.8)
            grid = DMS.generate_grid(lat_range, lon_range, 0.1, 0.1)
        """
        start_x = min(x_range)
        end_x = max(x_range)
        if fixed_grid:
            start_x = DMS.get_nearest_item(start_x, x_step)
        start_y = min(y_range)
        end_y = max(y_range)
        if fixed_grid:
            start_y = DMS.get_nearest_item(start_y, y_step)
        
        # Generate latitude and longitude lists
        x_coordinate_list = DMS.generate_range(start_x, end_x, x_step, 'latitude')
        y_coordinate_list = DMS.generate_range(start_y, end_y, y_step, 'longitude')
        
        # Create grid points
        grid_points = []
        for x in x_coordinate_list:
            for y in y_coordinate_list:
                pair = (x, y) if output_as_dms else (x.to_decimal_degrees(), y.to_decimal_degrees())
                grid_points.append(pair)
        
        return grid_points
    
    def to_decimal_degrees(self):
        """Convert DMS to decimal degrees"""
        decimal = abs(self.degrees) + self.minutes/60 + self.seconds/3600
        return decimal if self.degrees >= 0 else -decimal
    
    @classmethod
    def from_decimal_degrees(cls, decimal_degrees, coordinate_type=None):
        """Create DMS object from decimal degrees"""
        is_negative = decimal_degrees < 0
        decimal_degrees = abs(decimal_degrees)
        
        degrees = int(decimal_degrees)
        minutes_decimal = (decimal_degrees - degrees) * 60
        minutes = int(minutes_decimal)
        seconds = (minutes_decimal - minutes) * 60
        
        if is_negative:
            degrees = -degrees
        
        return cls(degrees, minutes, seconds, coordinate_type)
    
    def __str__(self):
        """Return formatted string with degree, minute, and second symbols"""
        if self.coordinate_type in ['latitude', 'longitude']:
            # Use absolute values for display with directional indicators
            rounded_dms = DMS(abs(self.degrees), abs(self.minutes), abs(self.seconds))
            abs_degrees = rounded_dms.degrees
            abs_minutes = rounded_dms.minutes
            abs_seconds = rounded_dms.seconds
            
            # Handle case where degrees is 0 but coordinate is negative
            is_negative = self.to_decimal_degrees() < 0
            seconds_string = str(round(abs_seconds)).rjust(2,'0')
            if seconds_string == '60':
                seconds_string = '00'
                abs_minutes += 1
            
            base_str = f"{abs_degrees}° {abs_minutes:02}\\' {seconds_string}\""
            
            if self.coordinate_type == 'latitude':
                direction = ' S' if is_negative else ' N'
            else:  # longitude
                direction = ' W' if is_negative else ' E'
            
            return f"{base_str}{direction}"
        else:
            # Standard format without directional indicators
            return f"{self.degrees}° {self.minutes}\\' {str(round(self.seconds)).rjust(2,'0')}\""
    
    def __repr__(self):
        """Return unambiguous string representation"""
        if self.coordinate_type:
            return f"DMS({self.degrees}, {self.minutes}, {self.seconds}, '{self.coordinate_type}')"
        else:
            return f"DMS({self.degrees}, {self.minutes}, {self.seconds})"
    
    def __add__(self, other):
        """Add two DMS objects"""
        if isinstance(other, DMS):
            total_decimal = self.to_decimal_degrees() + other.to_decimal_degrees()
            # Preserve coordinate type only if both objects have the same type
            result_type = self.coordinate_type if self.coordinate_type == other.coordinate_type else None
            return DMS.from_decimal_degrees(total_decimal, result_type)
        return NotImplemented
    
    def __sub__(self, other):
        """Subtract two DMS objects"""
        if isinstance(other, DMS):
            total_decimal = self.to_decimal_degrees() - other.to_decimal_degrees()
            # Preserve coordinate type only if both objects have the same type
            result_type = self.coordinate_type if self.coordinate_type == other.coordinate_type else None
            return DMS.from_decimal_degrees(total_decimal, result_type)
        return NotImplemented
    
    def __mul__(self, scalar):
        """Multiply DMS by a scalar"""
        if isinstance(scalar, (int, float)):
            total_decimal = self.to_decimal_degrees() * scalar
            # Preserve coordinate type for scalar multiplication
            return DMS.from_decimal_degrees(total_decimal, self.coordinate_type)
        return NotImplemented
    
    def __rmul__(self, scalar):
        """Right multiplication (scalar * DMS)"""
        return self.__mul__(scalar)
    
    def __truediv__(self, scalar):
        """Divide DMS by a scalar"""
        if isinstance(scalar, (int, float)) and scalar != 0:
            total_decimal = self.to_decimal_degrees() / scalar
            # Preserve coordinate type for scalar division
            return DMS.from_decimal_degrees(total_decimal, self.coordinate_type)
        return NotImplemented
    
    def __neg__(self):
        """Negate the DMS object"""
        return DMS(-self.degrees, -self.minutes, -self.seconds, self.coordinate_type)
    
    def __abs__(self):
        """Return absolute value of DMS object"""
        if self.to_decimal_degrees() < 0:
            return -self
        return DMS(self.degrees, self.minutes, self.seconds, self.coordinate_type)
    
    def __float__(self):
        """Convert DMS to float (decimal degrees) when using float() function"""
        return self.to_decimal_degrees()
    
    def __int__(self):
        """Convert DMS to int (truncated decimal degrees) when using int() function"""
        return int(self.to_decimal_degrees())
    
    def __eq__(self, other):
        """Check equality between DMS objects"""
        if isinstance(other, DMS):
            return abs(self.to_decimal_degrees() - other.to_decimal_degrees()) < 1e-10
        return False
    
    def __lt__(self, other):
        """Less than comparison"""
        if isinstance(other, DMS):
            return self.to_decimal_degrees() < other.to_decimal_degrees()
        return NotImplemented
    
    def __le__(self, other):
        """Less than or equal comparison"""
        if isinstance(other, DMS):
            return self.to_decimal_degrees() <= other.to_decimal_degrees()
        return NotImplemented
    
    def __gt__(self, other):
        """Greater than comparison"""
        if isinstance(other, DMS):
            return self.to_decimal_degrees() > other.to_decimal_degrees()
        return NotImplemented
    
    def __ge__(self, other):
        """Greater than or equal comparison"""
        if isinstance(other, DMS):
            return self.to_decimal_degrees() >= other.to_decimal_degrees()
        return NotImplemented


# Example usage and testing
if __name__ == "__main__":
    # Create DMS objects
    angle1 = DMS(45, 30, 15.5)  # 45°30'15.50"
    angle2 = DMS(30, 45, 30.25) # 30°45'30.25"
    
    print("=== Basic DMS Objects ===")
    print("Angle 1:", angle1)
    print("Angle 2:", angle2)
    print()
    
    # Geographic coordinates
    print("=== Geographic Coordinates ===")
    latitude_north = DMS(40, 42, 46, 'latitude')    # 40°42'46.00"N
    latitude_south = DMS(-33, 52, 10, 'latitude')   # 33°52'10.00"S
    longitude_east = DMS(74, 0, 21, 'longitude')    # 74°0'21.00"E
    longitude_west = DMS(-118, 15, 30, 'longitude') # 118°15'30.00"W
    
    print("Latitude North:", latitude_north)
    print("Latitude South:", latitude_south)
    print("Longitude East:", longitude_east)
    print("Longitude West:", longitude_west)
    print()
    
    # Using decimal degrees constructor
    print("=== Decimal Degrees Constructor ===")
    decimal_lat = DMS(40.713056, coordinate_type='latitude')    # Auto-converts to DMS
    decimal_lon = DMS(-74.006944, coordinate_type='longitude')  # Auto-converts to DMS
    decimal_angle = DMS(123.456789)  # General angle from decimal
    
    print("40.713056° as latitude:", decimal_lat)
    print("-74.006944° as longitude:", decimal_lon)
    print("123.456789° as angle:", decimal_angle)
    print()
    
    # Arithmetic operations
    print("=== Arithmetic Operations ===")
    print("Addition:", angle1 + angle2)
    print("Subtraction:", angle1 - angle2)
    print("Multiplication by 2:", angle1 * 2)
    print("Division by 2:", angle1 / 2)
    print()
    
    # Geographic coordinate operations
    print("=== Geographic Operations ===")
    print("Latitude difference:", latitude_north - latitude_south)
    print("Longitude scaled by 0.5:", longitude_east * 0.5)
    print()
    
    # Conversion examples
    print("=== Conversions ===")
    print("Angle 1 in decimal degrees:", angle1.to_decimal_degrees())
    
    # Multiple ways to create from decimal degrees
    decimal_lat_method1 = DMS.from_decimal_degrees(40.713056, 'latitude')  # Class method
    decimal_lat_method2 = DMS(40.713056, coordinate_type='latitude')       # Constructor
    decimal_lon_method1 = DMS.from_decimal_degrees(-74.006944, 'longitude')
    decimal_lon_method2 = DMS(-74.006944, coordinate_type='longitude')
    
    print("Using class method - latitude:", decimal_lat_method1)
    print("Using constructor - latitude:", decimal_lat_method2)
    print("Using class method - longitude:", decimal_lon_method1)
    print("Using constructor - longitude:", decimal_lon_method2)
    print()
    
    # Normalization example
    print("=== Normalization ===")
    unnormalized = DMS(10, 75, 125.8)  # Will normalize to proper DMS format
    print("Unnormalized (10, 75, 125.8):", unnormalized)
    
    # Geographic coordinate with normalization
    unnormalized_lat = DMS(45, 75, 125.8, 'latitude')
    print("Unnormalized latitude:", unnormalized_lat)
    print()
    
    # Comparison operations
    print("=== Comparisons ===")
    print("angle1 > angle2:", angle1 > angle2)
    print("latitude_north > latitude_south:", latitude_north > latitude_south)
    print()
    
    # Interval checking examples
    print("=== Interval Checking ===")
    
    # Simple range checking
    test_lat = DMS(45.5, coordinate_type='latitude')
    print(f"Is {test_lat} between 40° and 50°?", test_lat.is_between(40, 50))
    print(f"Is {test_lat} between 40° and 45°?", test_lat.is_between(40, 45))
    print(f"Is {test_lat} between 40° and 45° (exclusive)?", test_lat.is_between(40, 45, inclusive=False))
    
    # Using DMS objects for comparison
    min_lat = DMS(40, 0, 0, 'latitude')
    max_lat = DMS(50, 0, 0, 'latitude')
    print(f"Is {test_lat} between {min_lat} and {max_lat}?", test_lat.is_between(min_lat, max_lat))
    print()
    
    # Geographic bounding box examples
    print("=== Geographic Bounding Box ===")
    
    # Define a bounding box for New York City area
    southwest_corner = (40.4774, -74.2591)  # (lat, lon) in decimal degrees
    northeast_corner = (40.9176, -73.7004)
    
    # Test points
    manhattan = DMS(40.7831, coordinate_type='latitude')  # Manhattan latitude
    manhattan_lon = DMS(-73.9712, coordinate_type='longitude')  # Manhattan longitude
    
    boston_lat = DMS(42.3601, coordinate_type='latitude')   # Boston latitude (outside box)
    
    print(f"Is Manhattan latitude {manhattan} in NYC bounding box?", 
          manhattan.is_within_bounds(southwest_corner, northeast_corner))
    print(f"Is Manhattan longitude {manhattan_lon} in NYC bounding box?", 
          manhattan_lon.is_within_bounds(southwest_corner, northeast_corner))
    print(f"Is Boston latitude {boston_lat} in NYC bounding box?", 
          boston_lat.is_within_bounds(southwest_corner, northeast_corner))
    
    # Using static method for complete point checking
    manhattan_point = (40.7831, -73.9712)  # (lat, lon)
    boston_point = (42.3601, -71.0589)
    
    print(f"Is Manhattan point {manhattan_point} in NYC bounding box?", 
          DMS.point_in_bounding_box(*manhattan_point, southwest_corner, northeast_corner))
    print(f"Is Boston point {boston_point} in NYC bounding box?", 
          DMS.point_in_bounding_box(*boston_point, southwest_corner, northeast_corner))
    print()
    
    # Using mixed formats
    print("=== Mixed Format Examples ===")
    test_point_dms = (DMS(40, 45, 30, 'latitude'), DMS(-73, 58, 45, 'longitude'))
    print(f"Is DMS point {test_point_dms[0]}, {test_point_dms[1]} in NYC box?",
          DMS.point_in_bounding_box(*test_point_dms, southwest_corner, northeast_corner))
    print()
    
    # Range generation examples
    print("=== Range Generation ===")
    
    # Generate simple decimal degree ranges
    lat_range = DMS.generate_range(40, 45, 1, 'latitude')
    print("Latitudes from 40° to 45° in 1° steps:")
    for lat in lat_range:
        print(f"  {lat}")
    print()
    
    # Generate with DMS step values
    start_lon = DMS(-74, 0, 0, 'longitude')
    end_lon = DMS(-73, 0, 0, 'longitude')
    step_minutes = DMS(0, 15, 0)  # 15-minute steps
    
    lon_range = DMS.generate_range(start_lon, end_lon, step_minutes, 'longitude')
    print("Longitudes from -74° to -73° in 15' steps:")
    for lon in lon_range[:5]:  # Show first 5
        print(f"  {lon}")
    print(f"  ... ({len(lon_range)} total)")
    print()
    
    # Generate coordinate grid
    print("=== Coordinate Grid Generation ===")
    lat_bounds = (40.7, 40.8)  # Small area around Manhattan
    lon_bounds = (-74.0, -73.9)
    
    grid = DMS.generate_grid(lat_bounds, lon_bounds, 0.05, 0.05)
    print(f"Generated {len(grid)} grid points:")
    for i, (lat, lon) in enumerate(grid[:6]):  # Show first 6 points
        print(f"  Point {i+1}: {lat}, {lon}")
    if len(grid) > 6:
        print(f"  ... and {len(grid) - 6} more points")
    print()
    
    # Generate with tuple inputs
    print("=== Range with Tuple Inputs ===")
    angle_range = DMS.generate_range((45, 30, 0), (46, 0, 0), (0, 10, 0))
    print("Angles from 45°30' to 46° in 10' steps:")
    for angle in angle_range:
        print(f"  {angle}")
    print()
    
    # Type conversion examples
    print("=== Type Conversions ===")
    test_coordinate = DMS(40, 42, 46.2, 'latitude')
    
    print(f"DMS object: {test_coordinate}")
    print(f"As float: {float(test_coordinate)}")
    print(f"As int: {int(test_coordinate)}")
    print(f"Using to_decimal_degrees(): {test_coordinate.to_decimal_degrees()}")
    print()
    
    # Practical usage with float conversion
    coordinates = [
        DMS(40, 42, 46, 'latitude'),
        DMS(41, 15, 30, 'latitude'), 
        DMS(42, 0, 0, 'latitude')
    ]
    
    print("Converting DMS list to decimal degrees:")
    decimal_coords = [float(coord) for coord in coordinates]
    print(f"DMS: {[str(c) for c in coordinates]}")
    print(f"Decimal: {decimal_coords}")
    print()
    
    # Using with math operations that require floats
    import math
    angle_dms = DMS(45, 0, 0)
    print("Math operations with float conversion:")
    print(f"sin({angle_dms}) = sin({float(angle_dms)}°) = {math.sin(math.radians(float(angle_dms))):.4f}")
    print(f"cos({angle_dms}) = cos({float(angle_dms)}°) = {math.cos(math.radians(float(angle_dms))):.4f}")
    print()
    
    print("Nearest item:")
    print("Nearest item:")
    item = DMS(25, 30, 15)  # 25°30'15"
    step = DMS(0, 1, 0)     # 1 second step
    result = DMS.get_nearest_item(item, step)
    print(result)  # DMS(25, 31, 0) - next minute boundary
    test_values = [-24.999, -24.9999, -24.99999, 24.999, 24.9999, 24.99999]
    
    print("Testing problematic decimal values:")
    print("=" * 50)
    
    for val in test_values:
        # Create DMS object (this will use the fixed _from_decimal)
        dms = DMS(val)
        decimal_back = dms.to_decimal_degrees()
        
        print(f"Original: {val:10.6f}")
        print(f"DMS:      {dms}")
        print(f"Back to decimal: {decimal_back:10.6f}")
        print(f"Difference: {abs(val - decimal_back):10.9f}")
        print("-" * 30)
    
    # Validation examples (uncomment to test)
    # try:
    #     invalid_lat = DMS(95, 0, 0, 'latitude')  # Invalid: > 90°
    # except ValueError as e:
    #     print("Validation error:", e)
    
    # try:
    #     invalid_lon = DMS(185, 0, 0, 'longitude')  # Invalid: > 180°
    # except ValueError as e:
    #     print("Validation error:", e)