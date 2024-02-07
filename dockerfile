FROM ubuntu:latest

RUN apt update
RUN apt install samba -y

COPY smb.conf /etc/samba/smb.conf

EXPOSE 139/tcp 445/tcp

CMD ["smbd", "--foreground", "--debug-stdout", "--no-process-group"]