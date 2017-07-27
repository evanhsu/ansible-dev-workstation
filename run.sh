#! /bin/bash

ansible-playbook -i inventory main.yml --ask-become-pass
