FROM ubuntu:latest

RUN apt update
RUN apt install samba -y

EXPOSE 139/tcp 445/tcp

CMD ["smbd"]