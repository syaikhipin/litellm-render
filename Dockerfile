# Use an official Python runtime as a parent image
FROM python:3.10-slim-buster

# Set the working directory in the container to /app
WORKDIR /app

# Install litellm
RUN pip install litellm
RUN pip install litellm[proxy]

# Run litellm when the container launches
CMD ["litellm"]
