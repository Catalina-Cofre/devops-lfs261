#!/bin/bash

useradd -m -s /bin/bash --password $(echo "123456" | openssl passwd -1 -stdin) cata
echo "cata ALL=(ALL) NOPASSWD: ALL" >/etc/sudoers.d/cata
chmod 440 /etc/sudoers.d/cata
echo 'PATH=$PATH:/usr/sbin:/sbin' >>/home/cata/.bashrc
