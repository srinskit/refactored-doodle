# Compose
## Manager Node
### One-time Setup
```sh
# Init docker swarm
docker swarm init --advertise-addr=<address>

# Create overlay network
docker network create --subnet=<subnet> -d overlay --attachable <network>

# Volume for Prometheus data
docker volume create prom-volume

# Volume for grafana data
docker volume create grafana-volume

# Volume for API-server data
docker volume create calc-volume
```
### Compose just the support stack
```sh
# Zookeeper + Prometheus
docker-compose manager-infra.yml up
```

### Compose everything
```sh
# Zookeeper + Prometheus + API-server x1 + Adder-service x1
docker-compose manager.yml up
```