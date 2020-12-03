# JupyterHub with Docker

This directory contains a docker-compose configuration to deploy jupyterhub
at fabric-dev.renci.org

## Usage

First time:

Modify .env according to your environment, then

```
    # pull the notebook image (DOCKER_NOTEBOOK_IMAGE in .env)
    docker pull fabrictestbed/jupyter-notebook:<version>
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
