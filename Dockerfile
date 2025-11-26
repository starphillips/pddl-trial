FROM ubuntu:22.04

# Install required packages
RUN apt update && apt install -y \
    git \
    python3 \
    cmake \
    build-essential \
    python3-setuptools \
    && rm -rf /var/lib/apt/lists/*

# Clone Fast Downward
RUN git clone https://github.com/aibasel/downward.git /fast-downward

# Build Fast Downward
RUN cd /fast-downward && ./build.py release

# Set working directory for your PDDL files
WORKDIR /workspace

# Default command (can be overridden)
CMD ["/bin/bash"]
