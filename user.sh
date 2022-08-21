# !/bin/bash
useradd -m $1 -s /usr/bin/bash
usermod -aG sudo $1
passwd $1
