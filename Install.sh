#!/bin/bash

echo Installing Custom Filters..

sleep 3

cd Filters.d/

mv * /etc/fail2ban/filter.d/

cd ..

cd Scripts

mv * /etc/fail2ban/

cd ..

mv Jail.local /etc/fail2ban/

mv README.md /etc/fail2ban/

cd ..

rm -rf Fail2Ban-Filters

