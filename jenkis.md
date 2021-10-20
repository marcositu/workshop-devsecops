# Comandos para instalar Jenknis (es un servidor automatizado de integración continua) de forma local

`wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -`

`sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list`

`sudo apt-get update`

`sudo apt-get install jenkins`
