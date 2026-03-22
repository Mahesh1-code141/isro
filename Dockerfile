FROM nginx:alpine

# Rmove defaut nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy project files into nginx html directory
COPY . /usr/share/nginx/html

# Expose port
EXPOSE 2007

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
