#!/bin/bash

# сервер
sudo apt-get install openssh-server -y

sudo systemctl enable ssh
sudo systemctl start ssh

# Генерация ключей RSA
if [ ! -f ~/.ssh/id_rsa ]; then
    ssh-keygen -t rsa -b 4096 -C "naumov.a.n@mail.ru" -f ~/.ssh/id_rsa -N ""
fi

# Копирование ключа на сервер
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

# Разрешаем авторизацию по ключам
sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' /etc/ssh/sshd_config

# Перезапуск службы SSH
sudo systemctl restart ssh
