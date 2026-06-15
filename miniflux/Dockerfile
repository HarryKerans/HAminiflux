ARG BUILD_FROM=ghcr.io/home-assistant/aarch64-base:latest
FROM miniflux/miniflux:latest AS miniflux

FROM ${BUILD_FROM}

COPY --from=miniflux /usr/bin/miniflux /usr/bin/miniflux

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]