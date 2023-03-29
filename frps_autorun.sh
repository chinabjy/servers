#Monitoring-frps
screen -dmS Monitoring-frps
screen -x -S Monitoring-frps -p 0 -X stuff "php -f /var/www/html/Monitoring-frps.php"
screen -x -S Monitoring-frps -p 0 -X stuff $'\n'
