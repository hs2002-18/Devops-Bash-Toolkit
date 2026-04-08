#!/bin/bash
read -p "Enter Username: " username #Inputs the username
#To check if the entered string is empty or not
if [ -z  "$username" ];then
    echo "Error: Username cannot be empty"
    exit 1
fi

#if the string is non-empty, we check the format
if [[ !"$username" =~ ^[a-z_][a-z_0-9-]*$ ]];then
    echo "Error: Invalid Username"
    exit 1
fi

#if the string format is correct, we check if the user already exist or not
if id "$username" &>/dev/null; then
    echo "Error: user already exists"
    exit 1
fi

#if username is new, then we add a password for it. Used a loop so that until the password does not match, we can continously enter the password
while true; do  
    read -s -p "Enter Password: " password
    echo
    read -s -p "Confirm Password: " confirm_password

    if [ "$password" = "$confirm_password" ]; then
    break
    else
        echo "Error: Password does not match! Try Again"
    fi
done

#Creating a user
if sudo useradd -m "$username"; then
    echo "$username:$password" | sudo chpasswd
    echo "User '$username' created successfully!"
else
    echo "Error: Failed to create user '$username'."
    exit 1
fi