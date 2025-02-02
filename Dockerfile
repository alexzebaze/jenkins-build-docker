FROM nginx:latest
RUN sed -i 's/nginx/jenkins-tuto/g' /usr/share/jenkins-tuto/html/index.html
EXPOSE 80

