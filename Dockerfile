FROM mcpayment/ubuntu1404-java8
ENV VERSION=0.2.2
RUN mkdir /opt/bot && \
    mkdir /opt/bot/Playlists && \
    wget --directory-prefix=/opt/ https://raw.githubusercontent.com/hippo82/jmusicbot-docker/master/run.sh && \
    wget --directory-prefix=/opt/bot/ https://github.com/jagrosh/MusicBot/releases/download/$VERSION/config.txt && \
    wget --directory-prefix=/opt/bot/ https://github.com/jagrosh/MusicBot/releases/download/$VERSION/JMusicBot-$VERSION-Linux.jar  && \
    chmod 775 /opt/run.sh
RUN sed -i "s/VERSION/$VERSION/g" /opt/run.sh
VOLUME /opt/bot/
CMD ["/opt/run.sh"]
