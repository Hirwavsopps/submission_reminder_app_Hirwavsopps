#!/bin/bash
# Ask for your name
read -p "Enter your name: " name

# Create the main directory
mkdir submission_reminder_${name}
cd submission_reminder_${name}

# Create subdirectories (if needed)
mkdir config reminder scripts data

# Create necessary files inside the directories
touch config/config.env
touch scripts/reminder.sh
touch scripts/functions.sh
touch scripts/startup.sh
touch data/submissions.txt

# Print a success message
echo "Environment setup completed for ${name}"

