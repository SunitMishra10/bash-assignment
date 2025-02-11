#!/bin/bash
<<info
info

# Default password length
length=12
use_special=false

# Parse command-line arguments
for arg in "$@"; do
    if [[ "$arg" =~ ^[0-9]+$ ]]; then
        length=$arg
    elif [[ "$arg" == "--special" ]]; then
        use_special=true
    fi
done

# Define character sets
chars="A-Za-z0-9"
special_chars="!@#$%"

# If --special flag is used, include special characters
if [ "$use_special" = true ]; then
    chars="$chars$special_chars"
fi

# Generate and print the password
password=$(cat /dev/urandom | tr -dc "$chars" | head -c "$length")
echo "Generated Password: $password"
