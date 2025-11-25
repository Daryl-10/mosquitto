FROM eclipse-mosquitto:2.0.22

# Copy your custom config file
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Change ownership to the Mosquitto user (UID 1883)
RUN chown mosquitto:mosquitto /mosquitto/config/mosquitto.conf