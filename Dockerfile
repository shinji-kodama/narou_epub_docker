FROM ruby:3.0.6-alpine

ENV NAROU_VERSION 3.9.0
ENV AOZORAEPUB3_VERSION 1.1.0b46
ENV AOZORAEPUB3_FILE AozoraEpub3-${AOZORAEPUB3_VERSION}

WORKDIR /temp

RUN set -x \
     # install AozoraEpub3
     && wget https://github.com/kyukyunyorituryo/AozoraEpub3/releases/download/${AOZORAEPUB3_VERSION}Q/${AOZORAEPUB3_FILE}.zip \
     && mkdir /aozoraepub3 \
     && unzip -q ${AOZORAEPUB3_FILE}.zip -d /aozoraepub3 \
     # install openjdk11
     && apk --no-cache add openjdk11 --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community \
     # install Narou.rb
     && apk --update --no-cache --virtual .build-deps add \
          build-base \
          make \
          gcc \
     && gem install narou -v ${NAROU_VERSION} --no-document \
     && apk del --purge .build-deps \
     # setting AozoraEpub3
     && mkdir .narousetting \
     && narou init -p /aozoraepub3 -l 1.8 \
     && rm -rf /temp

WORKDIR /novel

COPY ./init.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/init.sh

EXPOSE 33000-33001

ENTRYPOINT ["init.sh"]
CMD ["narou", "web", "-np", "33000"]
