
# Generic PHP Docker Setup

Original repository: https://github.com/aschmelyun/docker-compose-laravel

## How to use

Download the repo into your project directory using the following command: 

```bash
curl https://gitlab.com/nathanpurcell-cnic/generic-php-dockerfile/-/blob/main/docker.zip -O --header "PRIVATE-TOKEN: XXX"
```

Set and configure the following environment variables in your `.env` file: 

```bash
NGINXGROUP=www-data
NGINXUSER=www-data
PHPGROUP=www-data
PHPUSER=www-data
COMPOSE_PROJECT_NAME=purcell_docker
DOCKER_PROJECT_DIRECTORY="./project"
PUBLIC_DIR="public"
```

### Recommendations
We recommend adding `.docker/data` to your project's `.gitignore` file. 


## Commands

**Bring up the services in detached mode**

```bash
docker-composer up -d
```
<br />

**Build and bring up the services in detached mode**

```bash
docker-composer up -d --build
```
<br />

**Run a command in the Composer container**

```bash
docker-composer run --rm composer [COMMAND]
```
<br />

**Run a command in the Artisan container**

```bash
docker-composer run --rm artisan [COMMAND]
```
<br />

**Run a command in the NPM container**

```bash
docker-composer run --rm npm [COMMAND]
```
<br />

**Run a command in the PHP container**

```bash
docker-composer run --rm php [COMMAND]
```
<br />

**Stop the running containers**

```bash
docker-composer stop
```
<br />

**Stop & destroy the running containers**

```bash
docker-composer down
```
<br />
