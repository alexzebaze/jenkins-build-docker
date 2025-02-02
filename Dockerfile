FROM nginx:latest
RUN sed -i 's/nginx/xavki/g' /usr/share/jenkins-tuto/html/index.html
EXPOSE 80

