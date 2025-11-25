# Use the official Mosquitto Docker image as the base
FROM eclipse-mosquitto:2.0.22

# Copy your custom config file into the container's config directory
COPY mosquitto.conf /mosquitto/config/mosquitto.conf