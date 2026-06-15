ARG BUILD_FROM=ghcr.io/hassio-addons/base:17.2.4
FROM miniflux/miniflux:latest AS miniflux

FROM ${BUILD_FROM}

COPY --from=miniflux /usr/bin/miniflux /usr/bin/miniflux

COPY run.sh /
RUN chmod +x /run.sh