# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2021 Avinal Kumar <avinal.xlvii@gmail.com>
#
# Distributed under the terms of MIT License
# The full license is in the file LICENSE, distributed with this software.

FROM python:slim-buster

ADD requirements.txt /

LABEL org.opencontainers.image.author="Avinal Kumar <avinal.xlvii@gmail.com>"
LABEL org.opencontainers.image.source="https://github.com/avinal/lark"
LABEL org.opencontainers.image.version="latest"
LABEL org.opencontainers.image.description "A Docker image for https://github.com/avinal/Profile-Readme-WakaTime project as well as experimenting with GitHub Container Registry."

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && apt-get install -y git && pip3 install -r requirements.txt
