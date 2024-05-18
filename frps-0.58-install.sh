systemctl stop frps.service
#systemctl stop firewalld.service 
#systemctl disable firewalld.service
#firewall-cmd --zone=public --add-port=1-65535/udp --permanent#
#firewall-cmd --zone=public --add-port=1-65535/tcp --permanent
#firewall-cmd --reload
sysctl -w net.core.rmem_max=25000000
wget https://github.com/fatedier/frp/releases/download/v0.58.0/frp_0.58.0_linux_amd64.tar.gz
tar -zxvf frp_0.58.0_linux_amd64.tar.gz
wget -qO /lib/systemd/system/frps.service https://raw.githubusercontent.com/chinabjy/servers/master/frps058.service
wget -qO /root/frp_0.58.0_linux_amd64/frps.ini https://raw.githubusercontent.com/chinabjy/servers/master/frps.ini
systemctl daemon-reload
systemctl start frps  
systemctl enable frps
systemctl status frps
