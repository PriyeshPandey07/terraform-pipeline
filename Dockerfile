# define base images 
FROM nginx:latest
# copy source code into the path 
COPY src/ /usr/share/nginx/html
# expose port on nginx
EXPOSE 80
