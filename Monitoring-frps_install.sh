#1安装php
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm ;
rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm ;
yum -y install php72w php72w-cli php72w-common php72w-devel php72w-mysqlnd php72w-gd php72w-imap php72w-ldap php72w-odbc php72w-pear php72w-xml php72w-xmlrpc ;
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
