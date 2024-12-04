#!/bin/bash

# Set the source directory and destination directory
SOURCE_DIR=/home/chris/pinchflat/downloads
DEST_DIR=/mnt/Videos/YouTube

# Get the list of files and directories updated in the last 24 hours
UPDATE_FILES=$(find "$SOURCE_DIR" -type f -mtime 0)
UPDATE_DIRS=$(find "$SOURCE_DIR" -type d -mtime 0)

# Copy the files
for file in $UPDATE_FILES; do
    cp "$file" "$DEST_DIR"
done

# Copy the directories (recursively)
for dir in $UPDATE_DIRS; do
    mkdir -p "$DEST_DIR/$dir"
    cp -r "$SOURCE_DIR/$dir" "$DEST_DIR/$dir"
done