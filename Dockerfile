FROM nginx:stable

LABEL maintainer="Kun"

RUN curl https://storage.googleapis.com/kubernetes-release/release/v1.18.9/kubernetes-server-linux-amd64.tar.gz -o /usr/share/nginx/html/kubernetes-server-linux-amd64.tar.gz

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
