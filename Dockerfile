# Step 1: Use a clean, stable base image
FROM debian:bookworm-slim

# Step 2: Install required native desktop dependencies for the Flutter Engine
RUN apt-get update && apt-get install -y \
    curl \
    libgtk-3-0 \
    liblzma5 \
    libstdc++6 \
    && rm -rf /var/lib/apt/lists/*

# Step 3: Set the internal workspace directory
WORKDIR /app

# Step 4: Add your compiled release archive link
# Docker will automatically download and unpack the .tar.gz bundle directly into /app
RUN curl -L "https://github.com/devgoonar/5700webui-server/releases/download/v1.0.6-linux-17/NetBox5700-Linux-x86_64.tar.gz" | tar -xz -C /app/

# Step 5: Grant execution permissions to your core app binary
RUN chmod +x /app/webui_5700

# Step 6: Define the boot command to run the backend service
CMD ["./webui_5700"]

