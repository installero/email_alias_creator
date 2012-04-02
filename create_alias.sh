#!/bin/bash
L_USER=$(grep Location header.txt | sed 's/.*user=\([0-9]*\).*/\1/g')
L_SID=$(grep Location header.txt | sed 's/.*sid=\([0-f]*\).*/\1/g')
curl --cookie cookie.txt -d "add_email_alias=$1&add_email_mail=$2" "http://www.1gb.ru/registered.php?user=$L_USER&sid=$L_SID&advanced=&w_domain=&w_plan=&m2=&m2_k1=&m2_k2=&promo=" > index.html

