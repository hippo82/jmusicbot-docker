#!/bin/bash
    mkdir /opt/bot
    mkdir /opt/bot/Playlists
 if [ ! -e /opt/bot/config.txt ]
 then
      wget --directory-prefix=/opt/bot/ https://github.com/jagrosh/MusicBot/releases/download/VERSION/config.txt
 fi
 if [ ! -e /opt/bot/JMusicBot-VERSION-Linux.jar ]
 then
          wget --directory-prefix=/opt/bot/ https://github.com/jagrosh/MusicBot/releases/download/VERSION/JMusicBot-VERSION-Linux.jar
 fi
cd /opt/bot/
java -Dnogui=true -jar JMusicBot-VERSION-Linux.jar