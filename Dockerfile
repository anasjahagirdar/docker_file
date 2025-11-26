# Use an official Ubuntu base image
FROM ubuntu:latest

# Update packages and install basic tools
RUN apt-get update && apt-get install -y \
    curl \
    nano \
    git \
    tree \
    && apt-get clean

# Create a working directory
WORKDIR /app

# Add a script file with basic Linux commands
COPY commands.sh /app/commands.sh

# Run permissions for the script
RUN chmod +x /app/commands.sh

# Default command to run the script
CMD ["bash", "/app/commands.sh"]
