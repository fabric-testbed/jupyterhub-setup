# JupyterHub with Docker

This directory contains a docker-compose configuration to deploy jupyterhub
at fabric-dev.renci.org

## Usage

First time:

```
    docker build -t fabrictestbed/jupyter-notebook notebook/.
    docker network create jupyterhub-network
    docker volume create jupyterhub-data
    docker-compose build
```

Start the Jupyterhub:

```
    docker-compose up -d
```

and then visit https://fabric-dev.renci.org

Stop the Jupyterhub:

```
    docker-compose down
```
