FROM miniflux/miniflux:latest AS miniflux

ARG BUILD_FROM
FROM ${BUILD_FROM}

COPY --from=miniflux /usr/bin/miniflux /usr/bin/miniflux

COPY run.sh /
RUN chmod +x /run.sh