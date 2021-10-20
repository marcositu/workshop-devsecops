# Comandos para instalar docker en ubuntu

`sudo apt-get remove docker docker-engine docker.io containerd runc`

`sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release`

`curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -`

`sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"`

`sudo apt-get install docker-ce docker-ce-cli containerd.io`

`sudo apt-get update`

`sudo apt install docker-ce`

`sudo usermod -aG docker $USER`

`sudo chmod 666 /var/run/docker.sock`

`/etc/init.d/docker restart`

`sudo apt install docker-compose`
