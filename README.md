
# Generic PHP Docker Setup

Original repository: https://github.com/aschmelyun/docker-compose-laravel

## How to use

Download the repo into your project directory using the following command: 

```bash
curl https://gitlab.com/nathanpurcell-cnic/generic-php-dockerfile/-/blob/main/docker.zip -O --header "PRIVATE-TOKEN: XXX"
```

Set and configure the following environment variables in your `.env` file: 

**NP - TODO!** 



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
docker-composer up run --rm composer [COMMAND]
```
<br />

**Run a command in the Artisan container**

```bash
docker-composer up run --rm artisan [COMMAND]
```
<br />

**Run a command in the NPM container**

```bash
docker-composer up run --rm npm [COMMAND]
```
<br />

**Run a command in the PHP container**

```bash
docker-composer up run --rm php [COMMAND]
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
