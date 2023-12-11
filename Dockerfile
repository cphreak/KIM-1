# Test web app that returns the name of the host/pod/container servicing req
# Linux x64
FROM httpd:2.4

LABEL org.opencontainers.image.title="KIM-1 Emulator in Javascript" \
      org.opencontainers.image.description="KIM-1 emulator from https://github.com/maksimKorzh/KIM-1" \
      org.opencontainers.image.authors=""

# Create directory in container image for app code
RUN mkdir -p /usr/src/app

# Copy app code (.) to /usr/src/app in container image
# COPY . /usr/src/app
COPY . /usr/local/apache2/htdocs/


# Set working directory context
# WORKDIR /usr/src/app

# Install dependencies from packages.json
# RUN npm install

# Command for container to execute
# ENTRYPOINT [ "node", "app.js" ]