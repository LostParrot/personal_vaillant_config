# Use the latest john30/ebusd image as the base
FROM john30/ebusd:latest

ARG MQTT_USER
ARG MQTT_PASS

# Copy custom configuration files
COPY configs/ /etc/ebusd/

# Set environment variables to use your custom files
ENV EBUSD_CONFIGPATH=/etc/ebusd
ENV EBUSD_DEVICE="ens:10.0.40.40:9999"
ENV EBUSD_SCANCONFIG=""
ENV EBUSD_LATENCY=20
ENV EBUSD_MQTTPORT=1883
ENV EBUSD_MQTTHOST=192.168.99.2
ENV EBUSD_MQTTUSER=$MQTT_USER
ENV EBUSD_MQTTPASS=$MQTT_PASS
ENV EBUSD_MQTTINT="/etc/ebusd/mqtt-hassio.cfg"
ENV EBUSD_MQTTJSON=""
ENV EBUSD_LOG="all:error"
ENV EBUSD_MQTTVAR="filter-direction = r|u|^w"
