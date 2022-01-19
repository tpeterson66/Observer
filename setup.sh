# Install Updates
echo "getting updates..."
sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y

echo "installing ansible..."
# Install Ansible 
# https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu
sudo apt install software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

echo "cloning the repo..."
git clone https://github.com/tpeterson66/observer.git /tmp/observer


echo "running the playbook..."
ansible-playbook -i /tmp/observer/generalsetup/ansinble/inventory.ini /tmp/observer/generalsetup/ansinble/playbook.yml