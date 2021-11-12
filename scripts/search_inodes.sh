#!/bin/sh
# Script que conta o número de inodes dentro da estrutura de diretorios hierarquica especificada.
#echo 'echo $(ls -A "$1" | wc -l) $1' > /tmp/
#chmod 700 /tmp/count_em_$$
#find . -mount -type d -print0 | xargs -0 -n1 /tmp/count_em_$$ | sort -n


find $1 -xdev -type f | cut -d "/" -f2 | sort | uniq -c | sort -n