FROM ubuntu:20.04

RUN apt-get update && apt-get install -y openssh-server autossh
RUN mkdir /var/run/sshd
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
COPY ssh /root/.ssh

CMD ["/usr/sbin/sshd", "-D"]
