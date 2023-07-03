# Use the official Ubuntu 20.04 base image
FROM ubuntu:20.04

# Set environment variables to avoid tzdata asking for geographic area and time zone
ENV DEBIAN_FRONTEND=noninteractive

# Update the system and install telnet
RUN apt-get update && apt-get install -y telnet

# Default command when container starts
CMD ["tail", "-f", "/dev/null"]
