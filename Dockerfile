# SPDX-License-Identifier: Apache-2.0
# Copyright © 2025 Fitiavana Ramanandafy

FROM alpine:latest

ARG UID=1000
ARG GID=1000

RUN addgroup -g $GID app && adduser -D -u $UID -G app -h /home/app app

WORKDIR /home/app

RUN chown -R app:app /home/app

# Switch to user app
USER app

CMD ["/bin/sh", "-l"]
