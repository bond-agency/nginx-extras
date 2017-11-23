#!/bin/bash

# Change user id if it was given as variable
if [ -z "$USER_ID" ]; then
  echo "No user id given so keepind the default...";
else
echo "Setting user id to $USER_ID";
  usermod -u $USER_ID -o www-data
fi

# execute CMD
exec "$@"