#!/bin/bash

mkdir -p /root/.vnc
VNC_PASSWORD_FILE=/root/.vnc/passwd

DEFAULT_ROOTPASSWORD=changeme
DEFAULT_GEOMETRY=1024x768
if [ ${ROOTPASSWORD} ]; then
  echo $ROOTPASSWORD | vncpasswd -f > $VNC_PASSWORD_FILE
else
  echo $DEFAULT_ROOTPASSWORD | vncpasswd -f > $VNC_PASSWORD_FILE
fi

chmod 600 $VNC_PASSWORD_FILE

if [ ${GEOMETRY} ]; then
  exec vncserver :0 -geometry $GEOMETRY
else
  exec vncserver :0 -geometry $DEFAULT_GEOMETRY
