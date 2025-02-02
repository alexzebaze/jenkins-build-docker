FROM nginx:latest
RUN sed -i 's/nginx/xavki/g' /usr/share/xavki/html/index.html
EXPOSE 80

