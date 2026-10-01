#!/bin/bash

# Simple Interest Calculator in Bash

echo "-----------------------------------"
echo "    Simple Interest Calculator     "
echo "-----------------------------------"

# Prompt user for input
read -p "Enter Principal Amount: " principal
read -p "Enter Annual Rate of Interest (%): " rate
read -p "Enter Time Period (in years): " time

# Validate that inputs are numbers
re='^[0-9]+([.][0-9]+)?$'
if ! [[ $principal =~ $re ]] || ! [[ $rate =~ $re ]] || ! [[ $time =~ $re ]]; then
    echo "Error: Please enter valid numeric values."
    exit 1
fi

# Calculate Simple Interest: SI = (P * R * T) / 100
interest=$(awk "BEGIN {printf \"%.2f\", ($principal * $rate * $time) / 100}")

# Calculate Total Amount: Total = P + SI
total_amount=$(awk "BEGIN {printf \"%.2f\", $principal + $interest}")

# Display Results
echo "-----------------------------------"
echo "Results:"
echo "Principal Amount : $principal"
echo "Interest Rate    : $rate%"
echo "Time Period      : $time year(s)"
echo "-----------------------------------"
echo "Simple Interest  : $interest"
echo "Total Amount     : $total_amount"
echo "-----------------------------------"
