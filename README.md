# terraform101

```sh
ss --unix -lpn | grep docker

terraform init
terraform plan
terraform apply

docker ps

docker inspect $(docker ps -qf "name=redis-server") | grep IPAddress

export REDIS_IP=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' redis-server)
echo $REDIS_IP

docker network ls
docker network inspect redis-network


docker run --rm -it --network host redis:latest redis-cli -h $REDIS_IP INFO | grep redis_version

nc -z -v $REDIS_IP 6379

nc $REDIS_IP 6379
INFO

```
