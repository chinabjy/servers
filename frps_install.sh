systemctl stop firewalld.service 
systemctl disable firewalld.service
wget https://github.com/fatedier/frp/releases/download/v0.33.0/frp_0.33.0_linux_amd64.tar.gz
tar -zxvf frp_0.33.0_linux_amd64.tar.gz
wget -qO /lib/systemd/system/frps.service https://raw.githubusercontent.com/chinabjy/servers/master/frps.service
wget -qO /root/frp_0.33.0_linux_amd64/frps.ini https://raw.githubusercontent.com/chinabjy/servers/master/frps.ini
systemctl start frps  
systemctl enable frps
systemctl status frps
