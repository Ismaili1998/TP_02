#!/bin/bash

read -p "📂 Enter the SOURCE folder : " src_dir
read -p "📂 Enter the DESTINATION folder : " des_dir

if [ ! -d "$src_dir" ]; then
    red " ERROR: Source folder '$src_dir' doesn't even EXIST!"
    exit 1
fi

# Create destination if it doesn't exist
if [ ! -d "$des_dir" ]; then
    yellow "Destination folder doesn't exist. Creating it..."
    mkdir -p "$des_dir"
    green "Created destination: $des_dir"
fi

syncfun () {
    local src=$1
    local dest=$2

    bold "🔄 Migrating files from $src to $dest..."
    rsync -vrhP --exclude='config.json' "$src/" "$dest"

    if [ $? -eq 0 ]; then
        green "SYNC COMPLETE."
    else
        red " SYNC FAILED."
        exit 2
    fi
}

syncfun "$src_dir" "$des_dir"
