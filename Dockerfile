# Step 1: Use the highly stable bookworm base that works perfectly on Synology Kernels
FROM debian:bookworm-slim

# Step 2: Inject the backports repository configuration and update packages securely
RUN echo "deb http://deb.debian.org/debian bookworm-backports main" > /etc/apt/sources.get-system-repositories.list \
    || echo "deb http://deb.debian.org/debian bookworm-backports main" > /etc/apt/sources.list.d/backports.list \
    && apt-get update && apt-get install -y --no-install-recommends \
    curl \
    tar \
    libgtk-3-0 \
    liblzma5 \
    libstdc++6 \
    && apt-get install -t bookworm-backports -y \
    libc6 \
    libglib2.0-0 \
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

