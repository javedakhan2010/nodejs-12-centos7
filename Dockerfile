# Base image
FROM centos/nodejs-12-centos7

# Maintainer label
LABEL maintainer="javed@example.com"
LABEL version="1.0"
LABEL description="A simple Node.js application for OpenShift S2I"

# Add application sources
COPY src /opt/app-root/src

# Set the working directory
WORKDIR /opt/app-root/src

# Install the required packages
RUN yum -y update
RUN    yum clean all
RUN    npm install
RUN    npm cache clean --force
RUN    echo "Node.js application setup complete"

# Set environment variables
ENV NODE_ENV=production

# Expose the port
EXPOSE 8080

# Run the application
CMD ["npm", "start"]
