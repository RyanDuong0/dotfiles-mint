#!/bin/bash

# Read temperature in millidegrees
temp_raw=$(cat /sys/class/thermal/thermal_zone0/temp)

# Convert to degrees Celsius (integer)
temp_c=$((temp_raw / 1000))

echo " ${temp_c}°C"
