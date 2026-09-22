#!/bin/bash

clear

echo "================================"
echo "       MY VPS SETUP"
echo "================================"
echo
echo "1) Install packages"
echo "2) Check server"
echo "3) Exit"
echo

read -p "Choose [1-3]: " choice

case "$choice" in
    1)
        echo "Installing..."
        apt update
        apt install -y curl wget git
        echo "Installation completed."
        ;;
    2)
        echo "Hostname: $(hostname)"
        echo "User: $(whoami)"
        echo "Date: $(date)"
        ;;
    3)
        exit 0
        ;;
    *)
        echo "Invalid option."
        ;;
esac
