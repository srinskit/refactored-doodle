# Ansible
## Playbooks
### metrics-target-update
* Updates `/tmp/metrics-targets/node-exporter.json` on all manager nodes with node-exporter targets from inventory group `nodes-with-exporter`
* Updates `/tmp/metrics-targets/docker.json` on all manager nodes with node-exporter targets from inventory group `nodes-with-docker`

## Template Inventory
```yml
all:
  hosts:
    ...
  children:
    managers:
      ...
    nodes-with-docker:
      hosts:
        ...
      vars:
        docker_metrics_port: 9323

    nodes-with-exporter:
      hosts:
        ...
      vars:
        exporter_metrics_port: 9100
```