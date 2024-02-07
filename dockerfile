FROM ubuntu:latest

RUN sudo apt install samba -y

EXPOSE 139/tcp 445/tcp

CMD ["smbd", "--foreground", "--log-stdout", "--no-process-group"]