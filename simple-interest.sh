#!/bin/bash

# Simple Interest Calculator

# Function to calculate simple interest
calculate_simple_interest() {
  principal=$1
  rate=$2
  time=$3

  interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
  echo "The Simple Interest is: $interest"
}

# Read principal amount
read -p "Enter the principal amount: " principal

# Read annual interest rate
read -p "Enter the annual interest rate (in %): " rate

# Read time period in years
read -p "Enter the time period (in years): " time

# Calculate simple interest
calculate_simple_interest $principal $rate $time
