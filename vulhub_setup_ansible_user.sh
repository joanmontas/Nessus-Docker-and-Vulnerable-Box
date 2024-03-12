#!/bin/bash

# Copyright Joan Montas
# All rights reserved.
# License under GNU General Public License v3.0

USERNAME="ansible"
PASSWORD="changeme"

# setup ssh
apt-get update

apt-get install -y openssh-server

ssh-keygen -A

service ssh start

# setup ansible user: home, shell and password
useradd -m -s /bin/bash $USERNAME
echo "$USERNAME:$PASSWORD" | chpasswd