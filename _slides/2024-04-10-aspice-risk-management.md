---
title: ASPICE中的风险管理
description:
theme: solarized # beige
#theme: beige
layout: slides
transition: slide # none/fade/slide/convex/concave/zoom
---

<style type="text/css">
.reveal * { 
  text-align: left;
 }
 .reveal em {
    font-size: smaller;
}
</style>


## ASPICE
# 风险管理


{% plantuml %}
(now) -> (next)
{% endplantuml %}

presentation by JOE  (aka EE)


---

## 风险管理

是一个持续的过程，包括

- 风险识别
- 风险分析
- 风险评估
- 风险应对
- 风险监控

---

## 风险识别

识别可能会对项目造成影响的因素

  - 技术
  - 进度
  - 人员
  - 预算

---

## 风险分析

对风险进行定量或定性分析，以便制定应对方案

  - 影响范围
  - 概率

---

## 风险评估

根据风险的影响和概率等因素，确定有限级

---

## 风险应对

根据优先级采取应对措施

  - 避免
  - 减轻
  - 转移
  - 接受

---

## 风险监控

对已经识别的风险进行监控

  - 及时调整应对措施

---

## 概念

又称软件构建管理

- 定义软件模块的组成
- 版本控制
- 维护版本之间关系
- 开发过程可以追溯

---

### ASPICE中的软件配置的版本控制
### 1、目标

- <p class="fragment">负责管理软件开发过程中的版本变化
- <p class="fragment">保证不同版本之间的协同工作，防止错误和重复劳动
- <p class="fragment">对软件开发的历史记录进行跟踪、存储和控制，以便回溯和比较
- <p class="fragment">配置管理过程的质量保证措施（代码审查；测试）

---

### ASPICE中的软件配置的版本控制
### 2、手段

- <p class="fragment">基于文件系统
- <p class="fragment">集中式
- <p class="fragment">分布式

---

### ASPICE中的软件配置的版本控制
### 3、注意事项

- 确定合适的版本控制策略
  - 版本号的定义
  - 版本发布的频率
  - 版本控制的流程
- 定期进行版本备份以防数据丢失


---

### ASPICE中的软件配置管理计划（3）

- <p class="fragment">软件开发过程中需要进行配置管理的软件、文档和相关资源的清单
- <p class="fragment">配置管理过程的具体流程（配置标识；配置项的定义；配置项的变更管理）
- <p class="fragment">配置管理的相关工具和技术（版本控制工具；缺陷管理工具）
- <p class="fragment">配置管理过程的质量保证措施（代码审查；测试）


---


## 工具（1）

- 版本管理工具 git
  - [为什么git](/why-git-is-better-than-x/)

  - 基本要求
    - 确定合适的版本控制策略
      - 版本号的定义
      - 发布频率
      - 版本控制流程
    - 定期进行版本备份以防数据丢失

---

## 工具（2）

- 缺陷管理工具

---

## 质量保证措施（1）

代码审查

- 覆盖率

---

## 质量保证措施（2）

测试

- <p class="fragment">单元测试
- <p class="fragment">功能测试
- <p class="fragment">整合测试（台架）
- <p class="fragment">整车测试

---

END

---

请关注、订阅【EE道来】【EE走走看看】

Please subcribe my Channel

<img data-src="/images/energy-cube.jpg"  height="240" width="320">

您的关注 / 订阅 是我制作影片的能量来源

Your “subcribing” / “following” will be my energy cube. 

---

# 谢谢你！
# Thanks a lot.
