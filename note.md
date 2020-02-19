---
layout: page
title: 常用资料
---

## Toolkits

### Golang

### python

### ruby

### C/C++

### shell

### verilog

### kicad

### markdown

typora

## books

## DevOps

### K8S

运维，团队、开发管理

https://kubernetes.io/zh/docs/home/

https://github.com/kubernetes/kubernetes

kind: https://banzaicloud.com/blog/kind-ingress/

https://edu.aliyun.com/roadmap/cloudnative



### docker

#### setting up

docker.dmg download mirror

http://mirrors.aliyun.com/docker-toolbox/mac/docker-for-mac/

windows

http://mirrors.aliyun.com/docker-toolbox/windows/docker-for-windows/stable/InstallDocker.msi

#### commands

```shell
docker container -a
docker container ls
docker container ls
docker exec 775fc42b4352 ls
docker exec -it bb1a701a1aa1 /bin/sh
docker exec -t -i c45e0745c524 /bin/bash
docker exec -t -i hello_world /bin/bash
docker exec -t -i hello-world /bin/bash
docker image ls
docker image rm e61ec6ba3ba0
docker images
docker images -a
docker images ls
docker images rm 25725f93bea4
docker import docker.tar
docker ls
docker ps
docker ps -a
docker pull hello-world
docker rm $(docker ps -a -q)
docker rmi 25725f93bea4
docker rmi 25725f93bea4 -f
docker rmi $(docker images -a -q)
docker rmi image 25725f93bea4
docker run 25725f93bea4 /bin/ls
docker run bb1a701a1aa1 ls
docker run c45e0745c524
docker run -d -p 22 c45e0745c524 /usr/sbin/sshd -D
docker run -d -p 6666:22 18f0bae016cb /usr/sbin/sshd -D
docker run -d -p 6666:22 25725f93bea4 
docker run -d -p 6666:22 25725f93bea4 /bin/bash
docker run -d -p 6666:22 25725f93bea4 /bin/ls
docker run -d -p 6666:22 25725f93bea4 /bin/sh
docker run -d -p 6666:22 25725f93bea4 ls
docker run -d -p 6666:22 25725f93bea4 /usr/sbin/sshd -D
docker run -d -p 6666:22 jacklan/licheepi_nano /usr/sbin/sshd -D
docker run -d -p c45e0745c524 /usr/sbin/sshd -D
docker run fce289e99eb9
docker run hello-world
docker run -it 7efa21ed754a bash
docker run -it 7efa21ed754a sh
docker run -it bb1a701a1aa1 bash
docker run -it bb1a701a1aa1 /bin/sh
docker run -it bb1a701a1aa1 /usr/sbin/sshd
docker run -it c45e0745c524 bash
docker run -it c45e0745c524 /bin/ls
docker run -it c45e0745c524 /usr/sbin/sshd
docker run -it -d -p 6666:22 jacklan/licheepi_nano /usr/sbin/sshd -D
docker run -it fce289e99eb9 bash
docker run -it jacklan/licheepi_nano bash
docker run -it jacklan/licheepi_nano /usr/sbin/sshd
docker run --rm -it -v /work/zp:/workdir crops/zephyr-container
docker stop $(docker ps -a -q)
docker volumn ls
docker run --rm -it -v /work/zp:/workdir crops/zephyr-container
sudo usermod -aG docker $USER
```



## Back-end

### Golang On Gin

### Ruby On Rails



## Front-end

### Vue

## Client side/end point

Flutter

## Device

ESP8266 w/ nodemcu

## 3rd party

### ALIYUN

### XIAOMI

### HUAWEI

### BAIDU

## middle ware

### redis

### emqttd

### mongodb

### chaosblade

### openfass

### promethus

### grafana

## AI backend

## AI frontend

### K210

## EE/PLATFORM

### F1C100S

#### openwrt build
https://qinfengling.pro/build_openwrt_image_for_licheepi_nano.html

https://github.com/thirtythreeforty/businesscard-linux

#### buildroot

https://whycan.cn/t_3138.html

dl for buildroot: https://pan.baidu.com/s/1_tBdX9K7fOkH9JdXZ_MdiQ

