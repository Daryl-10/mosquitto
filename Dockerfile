# Use the official Mosquitto Docker image as the base
FROM eclipse-mosquitto:2.0.22

# Copy your custom config file
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# This line ensures the user running Mosquitto can read the config (already done, but good practice)
RUN chown mosquitto:mosquitto /mosquitto/config/mosquitto.conf

# --- NEW FIX: OVERRIDE DEFAULT ENTRYPOINT/CMD ---
# This command directly starts Mosquitto using the configuration file
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]