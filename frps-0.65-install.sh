systemctl stop frps.service
#sysctl -w net.core.rmem_max=25000000
wget https://github.com/fatedier/frp/releases/download/v0.65.0/frp_0.65.0_linux_arm64.tar.gz
tar -zxvf frp_0.65.0_linux_amd64.tar.gz
wget -qO /lib/systemd/system/frps.service https://raw.githubusercontent.com/chinabjy/servers/master/frps065.service
wget -qO /root/frp_0.65.0_linux_amd64/frps.toml https://raw.githubusercontent.com/chinabjy/servers/master/frps.toml
systemctl daemon-reload
systemctl start frps  
systemctl enable frps
systemctl status frps
