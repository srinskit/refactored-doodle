# RabbitMQ

## Build
```sh
docker build -t <username>/rabbitmq:latest -f Dockerfile .
```

## Run
```sh
# Global
docker service create --mode global --endpoint-mode dnsrr -p published=15672,target=15672,mode=host --name rmq --network rmq-net -e RABBITMQ_ERLANG_COOKIE='secret' --hostname "{{.Service.Name}}.{{.Task.Slot}}.{{.Task.ID}}.rmq-net" <username>/rabbitmq:latest

# Replicated
docker service create --replicas=3 -p 15672:15672 --name rmq --network rmq-net -e RABBITMQ_ERLANG_COOKIE='secret' --hostname "{{.Service.Name}}.{{.Task.Slot}}.{{.Task.ID}}.rmq-net" <username>/rabbitmq:latest
```