#!/bin/bash

mkdir -p /root/.vnc
VNC_PASSWORD_FILE=/root/.vnc/passwd

DEFAULT_ROOTPASSWORD=changeme
if [ ${ROOTPASSWORD} ]; then
  echo $ROOTPASSWORD | vncpasswd -f > $VNC_PASSWORD_FILE
else
  echo $DEFAULT_ROOTPASSWORD | vncpasswd -f > $VNC_PASSWORD_FILE
fi

chmod 600 $VNC_PASSWORD_FILE

exec vncserver :0

