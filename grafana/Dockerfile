FROM grafana/grafana:latest

COPY conf /usr/share/grafana-conf

ENV GF_PATHS_CONFIG /usr/share/grafana-conf/custom.ini
ENV GF_PATHS_PROVISIONING /usr/share/grafana-conf/provisioning
ENV GF_PATHS_DATA /data/grafana
