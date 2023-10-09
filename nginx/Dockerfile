# Use the official Nginx image as a parent image
FROM nginx:latest

# Copy your Nginx configuration file into the container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose the port Nginx listens on
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
