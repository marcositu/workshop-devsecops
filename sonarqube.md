# Comandos para iniciar un contenedor de docker de Sonarqube (Realiza el análisis SAST)
`curl -sSL https://raw.githubusercontent.com/bitnami/bitnami-docker-sonarqube/master/docker-compose.yml > docker-compose.yml`

`sysctl -w vm.max_map_count=262144`

`sysctl -p`

Recomendamos agregar el siguiente parámetro dentro del archivo docker-compose.yml

*restart: always*

`docker-compose up -d`

# Instalamos sonar-scanner
`wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.6.2.2472-linux.zip`

`unzip sonar-scanner-cli-4.6.2.2472-linux.zip`

`echo 'export PATH="/home/demos/Descargas/sonar-scanner-cli-4.6.2.2472-linux/sonar-scanner-4.6.2.2472-linux/bin:$PATH"' >> ~/.bashrc`

`source ~/.bashrc`
