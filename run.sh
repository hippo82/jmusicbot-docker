#!/bin/bash
if [ ! -e /opt/bot ]
 then
  mkdir /opt/bot
 elif [ ! -e /opt/bot/Playlists ]
  then
   mkdir /opt/bot/Playlists 
 elif [ ! -e /opt/bot/config.txt ]
  then
   echo "Copy config..."
   cp -p /opt/tmp/config.txt /opt/bot
 elif [ ! -e /opt/bot/JMusicBot-VERSION-Linux.jar ]
  then
   echo "Copy bot..."
    cp -p /opt/tmp/JMusicBot-VERSION-Linux.jar /opt/bot
 else
  echo "all ok"
 fi
cd /opt/bot/
java -Dnogui=true -jar JMusicBot-VERSION-Linux.jar