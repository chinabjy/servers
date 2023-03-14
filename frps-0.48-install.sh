systemctl stop frps.service
systemctl stop firewalld.service 
systemctl disable firewalld.service
sysctl -w net.core.rmem_max=25000000
wget https://github.com/fatedier/frp/releases/download/v0.48.0/frp_0.48.0_linux_amd64.tar.gz
tar -zxvf frp_0.48.0_linux_amd64.tar.gz
wget -qO /lib/systemd/system/frps.service https://raw.githubusercontent.com/chinabjy/servers/master/frps048.service
wget -qO /root/frp_0.48.0_linux_amd64/frps.ini https://raw.githubusercontent.com/chinabjy/servers/master/frps.ini
systemctl daemon-reload
systemctl start frps  
systemctl enable frps
systemctl status frps
