#!/bin/bash

if [ -f /tmp/mysql-root-password.txt ]; then
    PASSWORD=$(cat /tmp/mysql-root-password.txt)
    echo "Accessed MySQL root password"
