# Use a base image (choose an appropriate base image)
FROM debian:11

# Install NUT and other required packages
RUN apt-get update && apt-get install -y nut

# Copy your NUT configuration files into the container
COPY nut-config-files/ /etc/nut/

# Expose the necessary ports (e.g., if using a network protocol)
EXPOSE 3493

# Define the command to start the NUT service (modify if needed)
CMD ["/usr/sbin/upsd", "-D"]
