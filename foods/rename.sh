#!/bin/bash

# Counter to start renaming from 21
counter=21

# Loop through all the files ending with "copy.jpg"
for file in *" copy.jpg"; do
  # Get the file extension (in this case, always .jpg)
  extension="${file##*.}"

  # Create the new filename with the counter
  new_filename="${counter}.${extension}"

  # Rename the file
  mv "$file" "$new_filename"

  # Increment the counter
  ((counter++))
done
