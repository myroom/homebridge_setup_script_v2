#!/bin/bash



sudo systemctl daemon-reload
sudo systemctl enable homebridge
sudo systemctl start homebridge
sudo systemctl enable homebridge-config-ui-x
sudo systemctl start homebridge-config-ui-x
