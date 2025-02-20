#!/bin/bash
# Functions for the reminder app
check_deadlines() {
    echo "Checking deadlines..."
    
    # Path to the submissions file
    submissions_file="/submission_reminder_Hirwa/data/submissions.txt"
    
    # Debugging: Print the path to the submissions file
    echo "Looking for submissions file at: $submissions_file"
    
    # Check if the file exists
    if [[ ! -f "$submissions_file" ]]; then
        echo "Error: Submissions file not found!"
        return 1
    fi
    
    # Debugging: Confirm the file exists
    echo "Submissions file found!"
    
    # Read the file line by line
    echo "Upcoming deadlines:"
    echo "-------------------"
    while IFS=, read -r name assignment status due_date; do
        # Skip the header line
        if [[ "$name" == "Student Name" ]]; then
            continue
        fi
        
        # Display pending assignments
        if [[ "$status" == "Pending" ]]; then
            echo "Student: $name"
            echo "Assignment: $assignment"
            echo "Due Date: $due_date"
            echo "-------------------"
        fi
    done < "$submissions_file"
}
