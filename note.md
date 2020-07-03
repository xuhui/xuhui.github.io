---
layout: page
title: Cheet Sheet
---

## Toolkits

### Linux

https://blog.csdn.net/qq_16777851/

### Golang

### python

### ruby

### C/C++

### shell

#### redirecting
```
make 2>&1|more
make 2>&1|tee log.txt
```
#### find

find -iname '*.o'|xargs grep -iHn 'theText'

#### cut

https://www.computerhope.com/unix/ucut.htm


#### grep

https://www.computerhope.com/unix/ugrep.htm

grep -rHn 'text'

#### paste

https://www.computerhope.com/unix/upaste.htm

### git

```shell
$ git clone --depth 1 https://github.com/dogescript/xxxxxxx.git
$ git remote set-branches origin 'remote_branch_name'
$ git fetch --depth 1 origin remote_branch_name
$ git checkout remote_branch_name
```

for big repos solution 1

On your cloud server:

```
`git clone -n git://<repo>.git`
```

On your local computer (if fails, repeat to resume):

```
`rsync -a -P -e ssh <user>@<cloud-server>:<path-to-cloned-repository> <local-target-path>`
```

for big repos solution 2
```
git clone --depth=1 ..

git fetch --depth=N ..

git fetch --unshallow ..
```
clone kernel with slow network

```bash
git clone --depth=1 https://github.com/where-the-kernel-is/kernel.git
cd kernel
i=100
while true
do
  git fetch --depth=$i
  retval=$?
  if [ $retval -eq 0 ]
  then
    i=$(expr $i + 10)
  fi
  echo @@ $retval - $i @@@@@@@@@@@@@
  sleep 2
done
```

another method

```
https://blog.csdn.net/qq_35904259/article/details/61200880
https://blog.csdn.net/w05980598/article/details/78956699
```



### vim

https://github.com/skwp/dotfiles

http://blog.wuxu92.com/use-yadr-enhancing-your-vim/

faster? check the fork:

```
cd $HOME
git clone https://github.com/ryansch/yadr -b ryansch-fast .yadr
cd .yadr
rake install
```

### tmux

https://tmuxcheatsheet.com/

https://gist.github.com/MohamedAlaa/2961058

### buildroot

https://stackoverflow.com/questions/47320800/how-to-clean-only-target-in-buildroot

```
rm -rf output/target
find output/ -name ".stamp_target_installed" |xargs rm -rf 
```

### verilog

### kicad

### markdown

typora

https://remarkableapp.github.io/linux/download.html

https://github.com/jonschlinkert/remarkable

gitbook editor

https://morrowind.gitbooks.io/gitbook_notes/

### Sphinx / rst

https://www.ibm.com/developerworks/cn/opensource/os-sphinx-documentation/index.html

### vscode

read gbk code/comment

```
"files.autoGuessEncoding": false,
```



## books

## DevOps

### K8S

运维，团队、开发管理

https://kubernetes.io/zh/docs/home/

https://github.com/kubernetes/kubernetes

kind: https://banzaicloud.com/blog/kind-ingress/

https://edu.aliyun.com/roadmap/cloudnative

### ubuntu

/etc/apt/apt.conf.d/10periodic
APT::Periodic::Update-Package-List "0";

### docker

#### setting

prevent auto start during boot

```sh
$ sudo systemctl disable docker.service
$ sudo systemctl disable docker.socket
```

default data volume

```sh
$ docker volume create TEST 
$ ls /var/lib/docker/volumes
metadata.db  TEST/
```



relocate a data volume

https://docs.docker.com/config/daemon/systemd/

autoboot or not to autoboot

https://docs.docker.com/install/linux/linux-postinstall//#configure-docker-to-start-on-boot



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

https://github.com/gin-gonic/gin

3分钟中文简介 https://www.yoytang.com/go-gin-doc.html

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

## COMMENT ON TOOLS

https://whycan.cn/t_3730.html&action=new

```
可以尝试使用rtx啊，keil自己移植好了在arm9上直接用
```

不用Keil是我的原则之一。从我之前踩过的坑看，买不起的软件坚决不能用。

早晚得被软件开发商，客户或者同行审计出来，然后要么交钱要么推倒重来。

被Altium坑了小十万，office+visio+windows坑了小一万，在下不敢作死了。

所以我现在除了已经买了的Altium+微软全家桶，其他的一概不用。

编译器用gcc/tcc/sdcc，ide不用或者vs community，jlink之流一概不碰。

数值分析用octave，录屏用obs，cad和力热仿真用freecad，电磁仿真用fast field solver。

这样也好，发布项目的时候不用担心别人能不能打开，而且几年间自己也积攒了不少自己写的杂七杂八的工具。

离线

## Fun

### DIY

https://steward-fu.github.io/website/index.htm

## DDR3

每个DQ[0-7], DQS, DQM 一组，组内不要有其它信号线，保证同层、换层数一致，等长+/-10mil

地址、控制、时钟一组，等长+/-25mil

差分等长+/-5mil

信号线之间3W

地址、控制、命令走fly-by方式

## MISC HW NOTES

use NP0 caps for osc circuits