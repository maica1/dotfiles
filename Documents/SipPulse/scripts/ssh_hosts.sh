#!/bin/sh

config_file=/home/maicon/.ssh/config

sed -i "1s/^/Host ${1}\n   Hostname ${2}\n/" $config_file


https://opensource.com/article/19/12/help-bash-program
