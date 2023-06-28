#!/bin/bash

ssh_dir="$HOME/.ssh"

# Check if .ssh directory already exists
if [ -d "$ssh_dir" ]; then
    echo "The .ssh directory already exists."
else
    # Create the .ssh directory
    mkdir "$ssh_dir"
    echo "The .ssh directory has been created."
    # Set appropriate permissions
    chmod 700 "$ssh_dir"
fi

