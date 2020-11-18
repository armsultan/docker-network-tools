FROM alpine:3.12

LABEL maintainer="armand <armsultan@gmail.com>" \
      description="A Docker image with various network tools pre-installed." \
      org.label-schema.url="https://hub.docker.com/r/armsultan/network-tools" \
      org.label-schema.vcs-url="https://github.com/armstulan/docker-network-tools" \
      org.label-schema.vcs-type="Git"

# Define Tools versions
# Vegeta - https://github.com/tsenart/vegeta/releases
# Fortio - https://github.com/fortio/fortio/releases
ENV VEGETA_VERSION 12.8.4
ENV FORTIO_VERSION 1.11.0

## Install Tools
RUN set -x \
&& apk -U upgrade && apk add --no-cache \
    bash \
    bash-completion \
    bind-tools \
    ca-certificates \
    coreutils \
    curl \
    drill \
    findutils \
    fping \
    git \
    ipcalc \
    iperf \
    iputils \
    jq \
    libidn \
    libressl \
    macchanger \
    net-tools \
    netcat-openbsd \
    ngrep \
    nload \
    nmap \
    nmap-scripts \
    oath-toolkit-oathtool \
    openssh-client \
    openssl \
    procps \
    socat \
    tcpdump \
    tshark \
    wget \
    # Some additional build tools
    && apk --update add --virtual build-dependencies alpine-sdk openssl-dev zlib-dev cmake python3 cmd:pip3 g++ make \
    util-linux gcompat git ca-certificates py-pip py3-six \
    # wrk2    - https://github.com/giltene/wrk2
        && cd /tmp \
        && git clone https://github.com/giltene/wrk2.git \
        && cd /tmp/wrk2 \
        && make \
        && cp wrk /bin/wrk2 \
    # vegeta - https://github.com/tsenart/vegeta
        && wget -q "https://github.com/tsenart/vegeta/releases/download/v${VEGETA_VERSION}/vegeta_${VEGETA_VERSION}_linux_amd64.tar.gz" -O /tmp/vegeta.tar.gz \
        && tar xzf /tmp/vegeta.tar.gz -C /bin \
    # fortio - https://github.com/fortio/fortio
        && curl -L "https://github.com/fortio/fortio/releases/download/v${FORTIO_VERSION}/fortio-linux_x64-${FORTIO_VERSION}.tgz" | tar -C / -xvzpf - \
    # testssl.sh - https://testssl.sh/
        && cd /tmp \
        && git clone --depth=1 https://github.com/drwetter/testssl.sh.git \
        && cd /tmp/testssl.sh \
        && cp testssl.sh /bin \
    # httpie  - https://httpie.io/
    # wrk     - https://github.com/wg/wrk
        && apk --update add \
            httpie \
            wrk \
    # Clear apk cache and clean up!
        && rm -rf /var/cache/apk/* \
        && apk del build-dependencies \
        && rm -rf /tmp \
        && echo 'export PS1="[docker@network-tools]\$ "' >> /root/.bash_profile

CMD ["/bin/bash", "--login", "-i"]
