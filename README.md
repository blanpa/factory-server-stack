simple-factory-server-stack

################################################################################
# Docker Compose File for MQTT Broker, Node-RED, TimescaleDB, Grafana, Adminer, and Portainer
################################################################################

Overview:
This Docker Compose file allows you to easily deploy and run a stack of services for MQTT messaging, data visualization, and database management. The stack includes an MQTT broker (HiveMQ), Node-RED, TimescaleDB, Grafana, Adminer, and Portainer. It provides a ready-to-use setup for building and monitoring IoT applications.

Prerequisites:
Before using this Docker Compose file, ensure that Docker and Docker Compose are installed on your system.

Usage:
1. Create a directory on your machine and navigate to it using the terminal or command prompt.
2. Create a new file named 'docker-compose.yml' and open it in a text editor.
3. Copy the contents of this Docker Compose file into 'docker-compose.yml'.
4. Customize the configuration parameters (e.g., usernames, passwords) according to your requirements.
5. If using TLS/SSL, make sure to provide the appropriate SSL certificate and private key files in the 'certs' directory.
6. Save the file.

Services:
The Docker Compose file defines the following services:

1. MQTT Broker (mqtt-broker):
   - Uses the HiveMQ Docker image (hivemq/hivemq4).
   - Exposes port 1883 for MQTT communication.
   - Requires MQTT_USERNAME and MQTT_PASSWORD environment variables for authentication.
   - If using TLS/SSL, mount the SSL certificate and private key files to '/opt/hivemq/certs'.

2. Node-RED (node-red):
   - Uses the Node-RED Docker image (nodered/node-red).
   - Exposes port 1880 for accessing the Node-RED editor.
   - Requires NODE_RED_USERNAME and NODE_RED_PASSWORD environment variables for authentication.
   - Mounts a local directory './node-red' as persistent storage for Node-RED data.

3. TimescaleDB (timescaledb):
   - Uses the TimescaleDB Docker image (timescale/timescaledb).
   - Requires POSTGRES_USER and POSTGRES_PASSWORD environment variables for authentication.
   - Mounts a local directory './timescaledb' as persistent storage for TimescaleDB data.

4. Grafana (grafana):
   - Uses the Grafana Docker image (grafana/grafana).
   - Exposes port 3000 for accessing the Grafana web interface.
   - Requires GF_SECURITY_ADMIN_USER and GF_SECURITY_ADMIN_PASSWORD environment variables for authentication.
   - Mounts a local volume 'grafana_data' as persistent storage for Grafana data.

5. Adminer (adminer):
   - Uses the Adminer Docker image (adminer).
   - Exposes port 8080 for accessing the Adminer web interface.
   - Requires ADMINER_DESIGN_USERNAME and ADMINER_DESIGN_PASSWORD environment variables for authentication.

6. Portainer (portainer):
   - Uses the Portainer Docker image (portainer/portainer).
   - Exposes port 9000 for accessing the Portainer web interface.
   - Requires ADMIN_USERNAME and ADMIN_PASSWORD environment variables for authentication.
   - Mounts the Docker socket '/var/run/docker.sock' for managing Docker containers.

Networking:
The services are connected to two Docker networks:
- 'front-tier' network for services that need to be exposed to the outside world (mqtt-broker, grafana, adminer, portainer).
- 'back-tier' network for internal communication between services (mqtt-broker, node-red, timescaledb).

Running the Stack:
To run the stack, execute the following command in the same directory as the '
