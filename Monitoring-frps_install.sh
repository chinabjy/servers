yum install screen -y
wget -O /var/www/html/Monitoring-frps.php https://raw.githubusercontent.com/chinabjy/servers/master/Monitoring-frps.php
wget -O /var/www/html/frps_autorun.sh https://raw.githubusercontent.com/chinabjy/servers/master/frps_autorun.sh
chmod +x /var/www/html/frps_autorun.sh
chmod +x /etc/rc.d/rc.local
echo "sh /var/www/html/frps_autorun.sh" >> /etc/rc.d/rc.local
screen -X -S Monitoring-frps quit
#Monitoring-frps
screen -dmS Monitoring-frps
screen -x -S Monitoring-frps -p 0 -X stuff "php -f /var/www/html/Monitoring-frps.php"
screen -x -S Monitoring-frps -p 0 -X stuff $'\n'
