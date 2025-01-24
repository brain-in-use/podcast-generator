FROM ubuntu:latest

# Update and install required packages
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

# Install Python dependencies
RUN pip3 install PyYAML

# Copy the main script to the container
COPY feed.py /usr/bin/feed.py

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Set the entrypoint for the container
ENTRYPOINT ["/entrypoint.sh"]
