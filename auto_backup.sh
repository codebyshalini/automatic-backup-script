#!/bin/bash
# Automatic File Backup Script
# Author: Your Name
# Description: Creates a backup of a folder into a timestamped archive

SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="$HOME/Backups"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

# Create backup directory if not exists
mkdir -p "$BACKUP_DIR"

# Create archive
tar -czf "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" "$SOURCE_DIR"

echo "Backup of $SOURCE_DIR completed!"
echo "Saved as $BACKUP_DIR/backup_$TIMESTAMP.tar.gz"
