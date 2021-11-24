FROM frolvlad/alpine-glibc:alpine-3.12

ARG VERSION=stable

COPY docker-entrypoint.sh /

WORKDIR /opt

RUN wget \
    -O factorio_headless.tar.xz \
    https://factorio.com/get-download/$VERSION/headless/linux64 \
    && \
    tar -xf factorio_headless.tar.xz \
    && \
    rm factorio_headless.tar.xz

WORKDIR /opt/factorio

RUN adduser -u 845 -S -H factorio-admin \
    && \
    chown -R factorio-admin /opt/factorio


RUN chmod +x /docker-entrypoint.sh \
    && \
    chmod +x /opt/factorio/bin/x64/factorio

USER factorio-admin

EXPOSE 34197/udp

ENTRYPOINT ["/docker-entrypoint.sh"]
