#!bin/bash
    mkdir /opt/bot && \
    mkdir /opt/bot/Playlists && \
 if [! -f "/opt/bot/config.txt"]
      wget --directory-prefix=/opt/bot/ https://github.com/jagrosh/MusicBot/releases/download/VERSION/config.txt
 fi
 if [! -f "/opt/bot/JMusicBot-VERSION-Linux.jar"]
	  wget --directory-prefix=/opt/bot/ https://github.com/jagrosh/MusicBot/releases/download/VERSION/JMusicBot-VERSION-Linux.jar 
 fi
cd /opt/bot/
java -Dnogui=true -jar JMusicBot-VERSION-Linux.jar
