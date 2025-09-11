# Use the provided base image
FROM ghcr.io/berriai/litellm:main-latest

# Set the working directory to /app
WORKDIR /app

# Just copy the configuration file
COPY config.yaml .

# Expose the necessary port
EXPOSE 4000

# Run the application directly
CMD ["--port", "4000", "--config", "config.yaml"]
