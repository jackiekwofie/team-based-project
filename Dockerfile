# Use an official nginx image as the base image
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Remove default nginx index page
RUN rm -rf ./*

# Copy the static website files to the nginx html directory
COPY index.html .
COPY styles.css .

# Expose port 80 to the outside world
EXPOSE 80

# Start nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]

