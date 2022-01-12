# General Setup

This is  used to setup a new machine with various tools to keep them up-to-date and also consistent across machines in various environments and deployments. 

## Setup

The config.yml file contians true/false statements for services and tools which, when set to true, will be installed by Ansible in subsequent stages.

## Execution

This solution requires that Ansible be installed on the local machine. If this is not posssible, it would be possible to use Ansible on a machine that does have access to the new machine(s) to deploy the playbook remotely.

### Installing Ansible

Ansible can be installed on verious operating systems. Check the documentation, below are the steps required for ubuntu.

```bash
# https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu
sudo apt install software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
```

### Cloning the Repository

```bash
git clone https://github.com/tpeterson66/observer.git /tmp/observer
```


### Running the playbook

The playbook is used to execute the tasks to install and configure the software as needed.

```bash
cd /tmp/observer
ansible-playbook -i inventory.ini playbook.yml
```