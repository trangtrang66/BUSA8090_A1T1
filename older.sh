#!/bin/bash
#save as older.sh
#This script search for the oldest file and return its name.
file = 
for f in *; do
	[[ -z "file" ]] && file = "$f" || [[ "$f" -ot "$file" ]] && file = "$f"
done
printf '%s\n' "file"
