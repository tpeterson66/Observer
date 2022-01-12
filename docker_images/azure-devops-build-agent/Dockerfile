FROM ubuntu:18.04

# To make it easier for build and release pipelines to run apt-get,
# configure apt to not require confirmation (assume the -y argument by default)
ENV DEBIAN_FRONTEND=noninteractive
RUN echo "APT::Get::Assume-Yes \"true\";" > /etc/apt/apt.conf.d/90assumeyes

RUN apt-get update \
&& apt-get install -y --no-install-recommends \
        ca-certificates \
        apt-utils \
        curl \
        jq \
        git \
        iputils-ping \
        libcurl4 \
        libicu60 \
        libunwind8 \
        netcat \
        libssl1.0 \
        unzip \
        apt-transport-https \
        software-properties-common \
        wget

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

RUN curl https://releases.hashicorp.com/terraform/0.14.7/terraform_0.14.7_linux_amd64.zip > /tmp/terraform.zip
RUN command unzip /tmp/terraform.zip -d /usr/local/bin/
RUN rm -rf /tmp/terraform.zip

# Download the Microsoft repository GPG keys
RUN add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"
RUN apt-get update
RUN apt-get install libicu55
RUN wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get update
RUN apt-get install -y powershell

WORKDIR /azp

COPY ./start.sh .
RUN chmod +x start.sh

CMD ["./start.sh"]