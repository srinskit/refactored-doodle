# Prometheus
Configured to discover 
* Vert.x instances 
* Node exporters
* Docker daemons

## Build
```sh
docker build -t <username>/prometheus:latest -f Dockerfile .
```

## Run
```sh
docker run --net=<network> --rm -p 9090:9090 -v /tmp/metrics-targets:/tmp/metrics-targets <username>/prometheus
```