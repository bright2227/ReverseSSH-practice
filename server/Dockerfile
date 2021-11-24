FROM ubuntu:20.04

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd

RUN useradd -m client
COPY ssh/authorized_keys /home/client/.ssh/authorized_keys
COPY ssh/id_rsa /root/.ssh/id_rsa
COPY ssh/id_rsa.pub /root/.ssh/id_rsa.pub

CMD ["/usr/sbin/sshd", "-D"]
