FROM debian:latest
RUN apt-get update && apt-get install -y curl bzip2 htop nginx
RUN useradd -s /bin/false nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY http1 /bin
COPY script.sh /bin
CMD ["script.sh"]
EXPOSE 8080
EXPOSE 8000
