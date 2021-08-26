# SPDX-License-Identifier: GPL-2.0
# SPDX-FileCopyrightText: 2021 Avinal Kumar <avinal.xlvii@gmail.com>
#
# Distributed under the terms of MIT License
# The full license is in the file LICENSE, distributed with this software.

FROM python:slim-buster

ADD requirements.txt /

LABEL org.opencontainers.image.author="Avinal Kumar <avinal.xlvii@gmail.com>"
LABEL org.opencontainers.image.source="https://github.com/avinal/lark"
LABEL org.opencontainers.image.version="0.1.0-beta"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && apt-get install git
RUN pip3 install -r requirements.txt
