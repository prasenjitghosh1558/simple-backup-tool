#!/bin/sh

# 1. Ensure the backup destination folder exists
mkdir -p backup

# 2. Get the filename from the first command-line argument
FILE=$1

# 3. Copy the file with a Unix epoch timestamp appended to its name
cp "$FILE" "backup/$FILE.$(date +%s)"

echo "Saved a backup of $FILE!"