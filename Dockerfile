# Use the latest john30/ebusd image as the base
FROM john30/ebusd:latest

# Copy custom configuration files
COPY configs/ /etc/ebusd/

# Set environment variables to use your custom files
ENV EBUSD_CONFIGPATH=/etc/ebusd
ENV EBUSD_DEVICE="ens:10.0.40.40:9999"
ENV EBUSD_SCANCONFIG=""
ENV EBUSD_LATENCY=20
