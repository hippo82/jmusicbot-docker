FROM mcpayment/ubuntu1404-java8
RUN mkdir /opt/bot/ \
          /opt/bot/Playlists
RUN wget --directory-prefix=/opt/ https://raw.githubusercontent.com/hippo82/jmusicbot-docker/master/run.sh
RUN wget --directory-prefix=/opt/bot/ https://github.com/jagrosh/MusicBot/releases/download/0.2.2/config.txt
RUN wget --directory-prefix=/opt/bot/https://github.com/jagrosh/MusicBot/releases/download/0.2.2/JMusicBot-0.2.2-Linux.jar
RUN chmod 775 /opt/run.sh
VOLUME /opt/bot/
CMD ["/opt/run.sh"]

