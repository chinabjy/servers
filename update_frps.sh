systemctl stop frps.service 
wget https://github.com/fatedier/frp/releases/download/v0.48.0/frp_0.48.0_linux_amd64.tar.gz
tar -zxvf frp_0.48.0_linux_amd64.tar.gz
wget -qO /lib/systemd/system/frps.service https://raw.githubusercontent.com/chinabjy/servers/master/frps048.service
wget -qO /root/frp_0.48.0_linux_amd64/frps.ini https://raw.githubusercontent.com/chinabjy/servers/master/frps.ini
systemctl start frps  
systemctl enable frps
systemctl status frps
