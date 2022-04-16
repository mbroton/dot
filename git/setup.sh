#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Provide name (arg1) and email (arg2) in order to setup git config"
    exit 1
fi

TEMP_FILE=".tmp_gitconfig"

# Replace placeholders
cp .gitconfig $TEMP_FILE
sed -i "s/{name}/$1/g" "$TEMP_FILE"
sed -i "s/{email}/$2/g" "$TEMP_FILE"

# Copy config
mv $TEMP_FILE "$HOME/.gitconfig"
cp "$PWD/.gitignore_global" "$HOME/.gitignore_global"
