# This Dockerfile 
# base image - nginx with tag "latest"
FROM nginx:latest

# Adding custom index.html hosted on Github 
ADD https://raw.githubusercontent.com/vickyghub/nginx/master/index.html /usr/share/nginx/html/

# Adding read permissions to custom index.html
RUN chmod +r /usr/share/nginx/html/index.html

# 'nginx -g daemon off" will run as default command when any container is run that uses the image that was built using this Dockerfile"
CMD ["nginx", "-g", "daemon off;"]
