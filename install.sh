#!/bin/bash

# Update system
sudo apt-get update
sudo apt-get upgrade

#Install Homebridge
sudo npm install -g --unsafe-perm homebridge
if ! [ -d ~/.homebridge ]; then 
mkdir ~/.homebridge
cp config.json ~/.homebridge/ 
fi

#Install Node.js
curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
sudo apt install -y nodejs libavahi-compat-libdnssd-dev

#Install homebridge-config-ui-x
sudo npm install -g --unsafe-perm homebridge homebridge-config-ui-x

#Autostart homebridge
sudo cat >/etc/systemd/system/homebridge.service <<EOL
[Unit]
Description=Homebridge
After=syslog.target network-online.target

[Service]
Type=simple
User=$USER
ExecStart=$(which homebridge) -U home/$USER/.homebridge -I
Restart=on-failure
RestartSec=3
KillMode=process
CapabilityBoundingSet=CAP_IPC_LOCK CAP_NET_ADMIN CAP_NET_BIND_SERVICE CAP_NET_RAW CAP_SETGID CAP_SETUID CAP_SYS_CHROOT CAP_CHOWN CAP_FOWNER CAP_DAC_OVERRIDE CAP_AUDIT_WRITE CAP_SYS_ADMIN
AmbientCapabilities=CAP_NET_RAW

[Install]
WantedBy=multi-user.target
EOL

#Restart demon & start homebridge
sudo systemctl daemon-reload
sudo systemctl enable homebridge
sudo systemctl start homebridge

