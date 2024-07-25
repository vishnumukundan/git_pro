#!/bin/bash

# Process files from files_to_ignore.txt
while IFS= read -r file; do
  git rm --cached "$file"
  git rm "$file"
  git add "$file"
done < "files_to_ignore.txt"

# Find and process ".g.dart" files
find . -name "*.g.dart" -type f -exec bash -c 'git rm --cached "$0"; git rm "$0"; git add "$0"' {} \;
find . -name "*.freezed.dart" -type f -exec bash -c 'git rm --cached "$0"; git rm "$0"; git add "$0"' {} \;
find . -name "*.config.dart" -type f -exec bash -c 'git rm --cached "$0"; git rm "$0"; git add "$0"' {} \;
find . -name "*.gen.dart" -type f -exec bash -c 'git rm --cached "$0"; git rm "$0"; git add "$0"' {} \;
# find . -name "*.g.dart" -type f -exec bash -c 'echo "$0"' {} \;


# Commit and push changes
git commit -m "chore(gitignore): clean gitignore for generated files"
git push