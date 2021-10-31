FROM nginx
RUN apt update && apt install git -y
RUN mkdir scripts
COPY scripts/. scripts
RUN sh scripts/script.sh
RUN rm -rf /etc/nginx/conf.d/default.conf
COPY scripts/profile.conf /etc/nginx/conf.d/
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]