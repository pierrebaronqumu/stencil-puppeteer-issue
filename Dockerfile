FROM node:18-slim

# Install necessary dependencies for Chromium
RUN apt-get update && apt-get install -y \
    chromium \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy package files first for better caching
COPY package.json package-lock.json ./

# Install dependencies
RUN npm ci

# Copy the rest of the application
COPY . .

# Run tests
CMD ["sh", "-c", "PUPPETEER_EXECUTABLE_PATH=$(which chromium) npm run test"]
