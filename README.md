# workshop-decsecops
La intención de la workshop es mostrar y orientar a los equipos de desarrollo, seguridad y devops (entre otros) que quieran comenzar en DevSecOps,  a segurar sus aplicaciones o bien a conocer un poco más acerca del desarrollo seguro, para esto, estaremos otorgando algunos tips e información que fuimos aprendiendo para armar un Pipeline DevSecOps básico. 

Mediante la utilización de diferentes herramientas open-source, que permiten realizar análisis del tipo SAST y DAST de forma totalmente automatizada en la infraestructura de la organización Logrando así reducir los tiempos durante las diferentes etapas (desarrollo,prueba y producción), tiempos de análisis y trazabilidad en cada una de las iteraciones.

## Todos estos comando son para fines educativos y no para poner en producción en su trabajo, ya que no estan pensados para respetar las buenas prácticas

# docker.md
* Nos da los comandos para instalar docker

# jenkis.md
* Este archivo contiene los comandos para instalar jenkis

# dvwa.md
* Este archivo contiene los comandos iniciar un contenedor de docker de de La aplicación web Damn Vulnerabl, la cual incluye intencionalmente vulnerabilidades de seguridad.

# sonarqube.md
* Tiene los comandos para iniciar un contenedor de docker de SonarQub, el cual nos va a permitir evaluar código fuente de forma estatica.

# defectdojo.md
* Nos da los comandos para iniciar un container de DefectDojo, donde vamos a poder administrar diferentes SCANS de las herramientas que fuimos ejecutando.

# crear_producto.sh
* Crea un producto dentro de DefectDojo

# crear_engagement.sh
* Crea un engagement dentro de un producto en DefectDojo

# scan_zap.sh
* Realiza un scan del tipo DAST con OWASP ZAP y el resultado lo importa en DefectDojo

# scansonarqube.sh
* Realiza un scan del tipo SAST con SonarQube y el resultado lo importa en DefectDojo

# pipeline
* Contiene el script para ejecutar el pipeline

