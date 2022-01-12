FROM ubuntu:20.04
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install curl unzip ansible python3-pip -y
RUN pip3 install pan-python
RUN pip3 install pandevice
RUN pip3 install pan-os-python
RUN ansible-galaxy collection install paloaltonetworks.panos
RUN curl https://releases.hashicorp.com/terraform/0.13.3/terraform_0.13.3_linux_amd64.zip > /tmp/terraform.zip
RUN unzip /tmp/terraform.zip -d /usr/local/bin/
# CMD rm -rf /tmp/terraform.zip