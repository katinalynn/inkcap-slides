#!/bin/bash
# Run this once from inside the inkcap-slides folder
# Prerequisites: git installed, GitHub CLI (gh) installed and authenticated
# Install GitHub CLI: https://cli.github.com

# 1. Initialize git
git init
git add .
git commit -m "Initial commit: Inkcap slide decks, template, and cheatsheet"

# 2. Create the GitHub repo and push
#    Change --private to --public if you want it public
gh repo create inkcap-slides --private --source=. --remote=origin --push

echo ""
echo "Done! Your repo is now live on GitHub."
echo "To clone on another machine: gh repo clone katinalynn/inkcap-slides"
