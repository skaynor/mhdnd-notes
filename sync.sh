#!/bin/bash

# Redo a sync on all files from the drive
rsync -aE --delete "/Users/sam/Google Drive/My Drive/Tabletop/Monster Hunter 5e/Lore" "/Users/sam/Developer/MonsterHunterDocs/docs/"
rsync -aE --delete "/Users/sam/Google Drive/My Drive/Tabletop/Monster Hunter 5e/General" "/Users/sam/Developer/MonsterHunterDocs/docs/"
rsync -aE --delete "/Users/sam/Google Drive/My Drive/Tabletop/Monster Hunter 5e/Monster Hunter 5e Resources" "/Users/sam/Developer/MonsterHunterDocs/docs/"
rsync -aE --delete "/Users/sam/Google Drive/My Drive/Tabletop/Monster Hunter 5e/DnD 5e Resources" "/Users/sam/Developer/MonsterHunterDocs/docs/"

# Replace all \ in .md files with nothing (try to avoid them when writing)
start_dir="/Users/sam/Developer/MonsterHunterDocs/docs"
find "$start_dir" -type f -name "*.md" -exec sed -i '' -e 's/\(\[\[[^]]*\)*\\/\1/g' {} \;
