
# Notes

## Spin up an arbitrary PHPMyAdmin instance: 
This PHPMyAdmin will connect to the *host's* MySQL server, not another container. 

```
docker run -p 8080:80 -e PMA_HOST=host.docker.internal -e MYSQL_ROOT_PASSWORD='' -d --name phpmyadmin phpmyadmin/phpmyadmin
```

## Spin up an (old) Ubuntu server and interact with it immediately: 
```
docker run -it ubuntu:12.04
```

## Execute a command in an existing, running container by service name: 
```
docker compose exec SERVICENAME ls -la
```

## Cleanup

#### Check how much memory our containers and images are taking up
```
docker system df
```

#### Clear build cache
```
docker builder prune
```

#### List RUNNING containers
```
docker container ls
```

#### List ALL containers
```
docker container ls -a
```

#### Remove all STOPPED containers
```
docker container prune
```

#### List all downloaded images
```
docker image ls 
```

#### Remove all UNUSED images
```
docker image prune -a
```

#### Prune all stopped containers, images and networks without prompting for confirmation
```
docker container prune -f && docker image prune -af && docker network prune -f
```