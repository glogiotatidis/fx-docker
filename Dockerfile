FROM debian:jessie

RUN apt-get update && \
    apt-get install -y --no-install-recommends python2.7 libpython2.7 build-essential python-dev python-pip git curl \
    libxt6 libgtk2.0-0 libdbus-glib-1-2 libasound2 libXcomposite1 libXdamage1 libXext6 libXrender1 libfontconfig libfreetype6 && \
    rm -rf /var/lib/apt

ENV VERSION 4.0

RUN curl https://archive.mozilla.org/pub/mozilla.org/firefox/releases/$VERSION/linux-x86_64/en-US/firefox-$VERSION.tar.bz2 | tar jx

WORKDIR /firefox

CMD ["./firefox", "--no-remote"]