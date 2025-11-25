FROM eclipse-mosquitto:2.0.22
COPY mosquitto.conf /mosquitto/config/mosquitto.conf
RUN chown mosquitto:mosquitto /mosquitto/config/mosquitto.conf

# --- THE FIX: Direct foreground execution ---
# This command runs the executable directly, forcing it to stay in the foreground (-c specifies the config file).
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]