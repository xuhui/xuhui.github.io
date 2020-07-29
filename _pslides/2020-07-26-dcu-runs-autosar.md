---
title: DCU/AUTOSAR 第一期调研学习报告
description: Key items after briefly survey
theme: solarized
layout: slides
transition: slide
---

<style type="text/css">
.reveal * { 
  text-align: left;
 }
 .reveal em {
    font-size: smaller;
}
</style>

### Primary study report on DCU project

2020/07/29

BY 周旭辉

---

### sum up of one weeky study

- 30% - overview of autosar, automotive software
- 50% - survey/study/try the opensouce code from github
  - target to create homebrew autosar solution
  - FreeOSEK
- 10% - S12 board, code
- 10% - comercial autosar solution application
  - simulink
  - EB

---

### sum up of one weeky study

- S12 在开源社区的活跃度低
  - GCC
    - 老旧的gcc版本，没有持续维护
    - https://www.gnu.org/software/m68hc11/
  - OS
    - uCOS II
    - freeRTOS

---

Autosar development workflow

<img data-src="/images/dcu/autosar-workflow.png" height='75%' width='75%'>
```
VFB 虚拟总线, ASW 应用软件
RTE 运行环境，BSW 基础软件
```
---

## 大致流程

- 使用 matlab/simulink 建模（编程）

- 配合使用 EB，生成代码

- 调试，运行

---

## 关键概念

autosar = infrastructure + application

infrastruture: HAL 

application: auto functions, independ from the infrastructure

---

## 关键交流议题

- 短期目标？

  - DCU 产品优先？

    - 在通读、通识 autosar 基础上开始做计划开发
    - 开发过程对日后 autosar 适配进行考虑、设计、准备

  - AUTOSAR 能力优先？

    - 准备 autosar 相关设施、环境
    - 人员学习、储备、培训
    - 以 DCU 作为实施目标进行推进

---

## 关键交流议题 - 续1

- 长期目标？ (option 1)
  - 建立 AUTOSAR 开发能力？
    - 建立开发 OSEK 能力
    - 针对相关标准演进进行OS迭代
    - 开发 MCAL，能对不同平台进行适配
    - 按照 autosar 工作流程开发有关的工具
      - 配置
      - 代码生成
      - 模拟、仿真

---

## 关键交流议题 - 续2

- 长期目标？ (option 2)
  - 建立 AUTOSAR 应用能力？
    - 会用就好
    - 购买、置备各种设施
    - 内部开发以应用、使用为主，开发少量辅助工具

---

## REF

[OSEK VS AutoSar OS](https://zhuanlan.zhihu.com/p/71005662)

[Requirements on OS](https://www.autosar.org/fileadmin/user_upload/standards/classic/3-2/AUTOSAR_SRS_OS.pdf)

[OS Spec.](https://www.autosar.org/fileadmin/user_upload/standards/classic/4-2/AUTOSAR_SWS_OS.pdf)


