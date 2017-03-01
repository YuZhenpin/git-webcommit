FROM eboraas/apache-php

RUN apt-get update && \
    apt-get install -y git-core

RUN git config --global push.default simple
