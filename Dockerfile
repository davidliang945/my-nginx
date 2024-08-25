#FROM alpine
#COPY quickstart.sh /
#CMD ["/quickstart.sh"]

# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy your static website files or HTML files into the Nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Command to run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
