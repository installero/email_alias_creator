curl -d "login_login=$1&login_pwd=$2" http://www.1gb.ru/registered.php --cookie-jar cookie.txt --dump-header header.txt > index.html
