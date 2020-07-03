---
layout: page
title: 2020 project list
---
## OSPL

###  sub project 1 - EL CPU CORE

#### spec
  * EL CPU CORE - H3 on mini PCI-e card
    * no hdmi
    * no wifi on board
    * SPI flash / emmc / SD-nand
    * all usb PIN out
    * DDR
    * <= 50mm x 50mm 
    * 开发板可以用 0.8mm，镀锡而不用镀金
    * connectors: mPCIe+FPC
    > mPCIe 接口定义，https://blog.csdn.net/greless/article/details/51698662　最后的部分
    > GND/VCC 应尽量与msata/epcie兼容，插错不烧板不烧卡

#### schedule

#### issue list (HW)

* 





* H3
* WITH 320x240 TFT panel including touch
* models/features
  * ES9023(model one) - H3 I2S slave mode
  * WM8741(model two) - H3 I2S slave mode

## DFRAME

PCBA with
* CPU F1C200S

* WIFI

  > https://whycan.cn/t_2091.html
  >
  > https://github.com/al177/esp8089/commit/28a040c61ca85f18e0ffe11e5058559997b8bde7

* DCDC support 60PIN panel

* SPI NAND

  * software

    > ! https://github.com/hcly/f1c100s
    >
    > ! ref to V3S also
    >
    > https://whycan.cn/t_1594.html
    >
    > https://whycan.cn/t_1795.html
    >
    > https://whycan.cn/t_3123.html
    >
    > https://whycan.cn/t_574.html
    >
    > https://whycan.cn/t_2560.html

  * parts

    > https://whycan.cn/t_2461.html

  * ref SPI NOR: MX25L256, 理论上 台湾华邦W25Q256, 北京兆易GD25Q256 都可以烧录运行

    > https://whycan.cn/t_3400.html

* USB HOST

* SPI TFT

  > https://whycan.cn/t_2166.html

* TOUCH PANEL

  > https://whycan.cn/t_1596.html
  >
  > https://whycan.cn/t_1632.html

## USB DAC

* MCU SAM3U
* SPI TFT DISPLAY PANEL
* ES9023 - model one; WM8741 model two

## USB AMP

* MCU SAM3U
* SPI TFT DISPLAY PANEL
* STA339BW

