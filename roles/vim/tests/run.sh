#!/bin/bash

# define variables
ROLE_NAME=franklinkim.vim

# install dependencies
# echo '* installing dependencies'
#ansible-galaxy install franklinkim.openssl

# create role symlink
echo '* creating symlink'
ln -s $(pwd) /usr/share/ansible/roles/$ROLE_NAME

# run tests
echo '* running tests'
ansible-playbook --syntax-check -i 'localhost,' -c local $(pwd)/tests/main.yml
ansible-playbook -vvvv -i 'localhost,' -c local $(pwd)/tests/main.yml
