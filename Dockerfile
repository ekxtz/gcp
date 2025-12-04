# Use the official Nginx base image
FROM nginx:alpine

# Copy all the content from the current directory (your static files)
# into the default Nginx web root directory.
COPY . /usr/share/nginx/html

# Expose port 80 (Nginx default)
EXPOSE 80

# Command to start Nginx (this is the default command in the base image)
CMD ["nginx", "-g", "daemon off;"]
