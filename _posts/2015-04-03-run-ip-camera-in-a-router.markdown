---
layout: post
title: 小米 MINI 路由器变 IP CAMERA
author: X. H.
category: diy
---

# 工具原料
* 小米 mini 路由器
* USB CAMERA，QQ 网聊用那种就可以。楼主用的是 C170，估计其它大多数的 USB CAMERA 都可以，不行就自己google折腾吧～
* 电脑。Window/linux/mac 都可以，用来通过 telnet/ssh 访问你的路由器，拷贝固件到路由器，运行刷固件命令。（Windows 需要 putty, pscp/winscp ，MAC/LINUX 系统都自带 ssh/scp 命令; 本贴以 linux 举例）
* U 盘 FAT 文件系统格式，2G 以下的绝大多数是 FAT 格式；如果不是则需要格式化成FAT格式，root 路由器时需要使用。
* 可选：若想自己编译固件需要一台 linux 或者 mac ，楼主用的是 ubuntu 14.04


# 步骤
* root 你的路由器，方法请参考
> [http://bbs.xiaomi.cn/thread-10593581-1-1.html](http://bbs.xiaomi.cn/thread-10593581-1-1.html)

> 必读：网友说新版本的开发版不能root，楼主也遇到同样的问题，解决方法是用U盘刷到0.4.36，之后就可以顺利刷机了。

> 参考：[http://bbs.xiaomi.cn/thread-10649077-1-1.html](http://bbs.xiaomi.cn/thread-10649077-1-1.html)

> 下载页面：[http://rom.xiaomi.cn/list-169-1-12-1-14-1](http://rom.xiaomi.cn/list-169-1-12-1-14-1)

> 下载地址：[http://bigota.miwifi.com/xiaoqiang/rom/r1cm/miwifi_r1cm_all_46ed1_0.4.36.bin](http://bigota.miwifi.com/xiaoqiang/rom/r1cm/miwifi_r1cm_all_46ed1_0.4.36.bin)

> 下载后拷贝到U盘（FAT格式），路由器断电，U盘插到路由器，按下RESET，开电，10秒后放开RESET键，等重启亮蓝灯后即可按官方方法继续ROOT。

* 刷新固件
按照后附的方法使用linux/mac编译固件。（如果手边没有linux或者mac，可以使用楼主预先编译好的固件，[下载地址：http://pan.baidu.com/s/1pJ0ZWqn](http://pan.baidu.com/s/1pJ0ZWqn)）
{% highlight sh %}
    scp openwrt-ramips-mt7620a-xiaomi-miwifi-mini-squashfs-sysupgrade.bin root@192.168.1.108:/tmp
    ssh root@192.168.1.108  # root 密码从小米页面获得，请注意前面root相关的小米官方链接内容
    cd /tmp    # ssh 登录后此时为路由器内部控制台
    mtd -r write openwrt-ramips-mt7620a-xiaomi-miwifi-mini-squashfs-sysupgrade.bin firmware
{% endhighlight %}
* 设置

> 上述刷机后路由器会自动重启。
> 确认已经使用网线连接路由器的lan口（白色的两个随便选一个连接电脑，除非上述刷机步骤使用wifi连接完成，否则你应该已经连接好了）

> 使用 telnet 登录路由器

{% highlight sh %}
telnet 192.168.1.1
{% endhighlight %}

> 运行以下命令设置路由器

{% highlight sh %}
uci set mjpg-streamer.core.enabled=1
uci del mjpg-streamer.core.username
uci del mjpg-streamer.core.password

uci set network.lan.ipaddr=192.168.10.1         #大多家用路由器所用 IP 是 192.168.1.1，改另外一个地址以免冲突
uci set network.wlan=interface
uci set network.wlan.proto=dhcp
uci set network.wlan.hostname=mycamera          #设置hostname，可以方便子你的 wifi 路由器管理页面找到小米路由的ip地址

uci set wireless.@wifi-device[0].disabled=0
uci set wireless.@wifi-iface[0].network=wlan
uci set wireless.@wifi-iface[0].mode=sta
uci set wireless.@wifi-iface[0].encryption=psk2
uci set wireless.@wifi-iface[0].ssid=my-ssid    #用你的wifi ssid 代替 my-ssid
uci set wireless.@wifi-iface[0].key=12345678    #用你的wifi密码代替 12345678

uci commit

/etc/init.d/mjpg-streamer reload

wifi

sync

reboot

{% endhighlight %}
* 使用

> 上述命令运行完毕后可以先用连网线的电脑测试：打开 firefox 输入网址 "http://192.168.10.1:8080/?action=stream
>  telnet 192.168.10.1 and check the ip address for wifi, play with the wifi address with firefox or vlc
> 

* IMPORTANT: 如果设置有误，发生不能连接情况请使用 U 盘刷回小米开发版，参考上述 root 的步骤

# 附录

ip-camera 的固件可以通过上述百度网盘链接下载；也可以自行编译生成，仓库地址和编译命令如下：

{% highlight sh %}
git clone git@github.com:xuhui/openwrt-xiaomi-mini
cd openwrt-xiaomi-mini
make
{% endhighlight %}

楼主所用的小米mini路由器
![](/images/extra/ip-camera-01.jpg)

楼主的 C170 USB CAM
![](/images/extra/ip-camera-02.jpg)

测试电脑网线直连访问
![](/images/extra/ip-camera-03.png)

通过wifi访问（我这里的环境分配的 ip 为 111）
![](/images/extra/ip-camera-04.png)

使用 VLC （iOS）访问
![](/images/extra/ip-camera-05.jpg)

VLC 全屏
![](/images/extra/ip-camera-06.jpg)

