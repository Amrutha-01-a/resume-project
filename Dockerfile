# Use the official Nginx base image from Docker Hub
FROM nginx:latest

# Copy custom configuration file to Nginx configuration directory
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your website's static files to the Nginx HTML directory
COPY ./static /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
