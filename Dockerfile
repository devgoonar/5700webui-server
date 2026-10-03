# Step 1: Use Ubuntu Noble which natively provides ultra-modern GLib symbols
FROM ubuntu:24.04

# Step 2: Set non-interactive mode and install required Flutter runtime dependencies
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    tar \
    ca-certificates \
    libgtk-3-0 \
    liblzma5 \
    libstdc++6 \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app

# Step 3: Set the internal workspace directory
WORKDIR /app

# Step 4: Add your compiled release archive link
# Docker will automatically download and unpack the .tar.gz bundle directly into /app
RUN curl -L "https://github.com/devgoonar/5700webui-server/releases/download/v1.0.6-linux-17/NetBox5700-Linux-x86_64.tar.gz" | tar -xz -C /app/

# Step 5: Grant execution permissions to your core app binary
RUN chmod +x /app/webui_5700

# Step 6: Define the boot command to run the backend service
CMD ["./webui_5700"]

