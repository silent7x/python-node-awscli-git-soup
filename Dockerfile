FROM node:22.11.0

RUN \
    apt-get update \
    && apt-get install -y --no-install-recommends \
    apt-utils
RUN \
    apt-get install -y --no-install-recommends \
    git \
    python3 \    
    python3-dev \
    python3-pip \
    python3-yaml \
    jq \
    && apt-get clean

RUN python3 --version
RUN pip3 --version
RUN rm /usr/lib/python3.11/EXTERNALLY-MANAGED
RUN pip3 install setuptools
RUN pip3 install wheel
RUN pip3 install python-telegram-bot --upgrade
RUN pip3 install awscli --upgrade
