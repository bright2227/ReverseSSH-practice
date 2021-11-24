# Reverse Ssh Tunnel

A reverse ssh tunnel preactice with openssh


1.  init the environment
```
sh key_generate.sh
docker-compose up -d
```


2.  client reversh connect

    client root user trys to login into server as client user.

```
docker exec -it client bash
autossh -o StrictHostKeyChecking=no -4 -M 23456 -NR 12345:127.0.0.1:22 client@server

#flags
#-o  directly add server to list of known hosts, so you don't have to enter yes.
#-4  only ipv4. ipv6 is not allowed in this network setting.
#-R  reverse ssh
#-M  create a port(23456) on client to  monitor server port(12345)

```

3.  server connect the port connecting with client

    server root user trys to login into client as root user.

```
docker exec -it server bash
ssh 127.0.0.1 -yp 12345
```
