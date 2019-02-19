#!/bin/bash

#sleep seconds when db initializing
#sh -c "sleep 10;mysql -uroot -pdefaultpass -e 'source /apps/saturn/config/saturn-console.sql'" &
sh -c "sleep 10;mysql -u$1 -p$2 -e 'source /apps/saturn/config/saturn-console.sql'" & 

/usr/local/bin/docker-entrypoint.sh mysqld
