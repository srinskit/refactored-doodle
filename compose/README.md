# Compose
## Manager Node
### One-time Setup
```sh
# Init docker swarm
docker swarm init --advertise-addr=<address>

# Create overlay network
docker network create --subnet=<subnet> -d overlay --attachable <network>
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
## Notes
* Set service user appropriately when volumes are mapped