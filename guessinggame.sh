#!/usr/bin/env bash

# Function to get the number of files in the current directory
function get_file_count {
  echo $(ls -1 | wc -l)
}

file_count=$(get_file_count)

# Function to handle user guess
function guess_loop {
  while true; do
    echo "Guess how many files are in the current directory:"
    read guess

    if [[ $guess -lt $file_count ]]; then
      echo "Your guess is too low."
    elif [[ $guess -gt $file_count ]]; then
      echo "Your guess is too high."
    else
      echo "Congratulations! You guessed the correct number of files."
      break
    fi
  done
}

# Run the guessing loop
guess_loop

