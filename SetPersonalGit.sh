#!/bin/bash

DEFAULT_EMAIL="tinnt0709@gmail.com"
DEFAULT_USERNAME="justt1n"

if [ "$#" -eq 2 ]; then
  EMAIL=$1
  USERNAME=$2
else
  EMAIL=$DEFAULT_EMAIL
  USERNAME=$DEFAULT_USERNAME
fi

git config --local user.email "$EMAIL"
git config --local user.name "$USERNAME"
git config --local core.editor "vim"

echo "Git configuration set with email: $EMAIL and username: $USERNAME"