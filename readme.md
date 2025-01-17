# Docker Flask Application

Este repositorio contiene un ejemplo de aplicación web simple utilizando Python y Flask, que se puede ejecutar dentro de un contenedor Docker. Incluye los pasos para construir y probar la imagen Docker localmente, subirla a DockerHub y usar Docker Compose para gestionar los contenedores.

## Contenido

- [Requisitos](#requisitos)
- [Estructura del Proyecto](#estructura-del-proyecto)
- [Construcción de la Imagen Docker](#construcción-de-la-imagen-docker)
- [Ejecución de la Imagen Localmente](#ejecución-de-la-imagen-localmente)
- [Subir la Imagen a DockerHub](#subir-la-imagen-a-dockerhub)
- [Uso de Docker Compose](#uso-de-docker-compose)

## Requisitos

- Docker instalado en tu sistema
- Una cuenta en DockerHub
- Git instalado en tu sistema

## Estructura del Proyecto

La estructura de archivos del proyecto es la siguiente:

```
.
├── app.py
├── DESAFIO_12.pdf
├── docker-compose.yaml
├── Dockerfile
├── readme.md
├── requirements.txt
├── static
└── templates
    └── index.html

```

## Construcción de la Imagen Docker

Primero, clona este repositorio:

```bash
git clone https://github.com/Dylan010/Dockerfile-hub-python
cd Dockerfile-hub-python
```

Luego, construye la imagen Docker:

```bash
docker build -t miapp:v1.0 .
```

## Ejecución de la Imagen Localmente

Para ejecutar la imagen Docker localmente, usa el siguiente comando:

```bash
docker run -p 5000:5000 miapp:v1.0
```

Abre tu navegador web y visita `http://localhost:5000` para ver la aplicación en funcionamiento.

## Subir la Imagen a DockerHub

Primero, asegúrate de haber iniciado sesión en DockerHub:

```bash
docker login
```

Luego, etiqueta la imagen con tu nombre de usuario de DockerHub:

```bash
docker tag miapp:v1.0 tuusuario/miapp:v1.0
```

Sube la imagen a DockerHub:

```bash
docker push tuusuario/miapp:v1.0
```

## Uso de Docker Compose

Docker Compose se utiliza para definir y ejecutar aplicaciones Docker con múltiples contenedores. En este proyecto, se ha incluido un archivo `docker-compose.yml` que facilita la gestión de los contenedores.

Para ejecutar la aplicación con Docker Compose, usa el siguiente comando:

```bash
docker-compose up
```

Esto descargará la imagen desde DockerHub y ejecutará el contenedor. Abre tu navegador web y visita `http://localhost:5000` para ver la aplicación en funcionamiento.
