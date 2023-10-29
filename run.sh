#!/bin/bash

# Name of the virtual environment
VENV_NAME="venv"

# Check if the virtual environment exists
if [ ! -d "$VENV_NAME" ]; then
    echo "Virtual environment doesn't exist. Creating..."
    python3 -m venv "$VENV_NAME"
fi

# Activate the virtual environment
echo "Activating virtual environment..."
source "$VENV_NAME/bin/activate"

# Check if requirements.txt exists, and if so, install the required packages
if [ -f "requirements.txt" ]; then
    echo "Installing required Python packages..."
    pip install -r requirements.txt
else
    echo "No requirements.txt found. Skipping package installation."
fi

# Run the project
echo "Running main.py..."
python3 main.py
