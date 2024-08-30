---
title: 研发活动前置条件和研发部门岗位描述
description: precondictions of work and JD
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

### precondictions of work and job description

2024/08/30

ZHOU 

---

### 明确各功能单元的功能

- 部门，岗位，人员的职责，角色

- 各个细胞基于自己的 DNA 运作， 各个员工（根据职位说明书）明确自己的岗位职责

---

### 部门功能列表/定义  - 项目部

- 项目规划

- 项目执行

  - 启动
  - 监控
  - 控制
  - 结束（验收总结）

---

### 部门功能列表/定义 - 研发部

（电子、结构、软件）

- 产品研发

- 技术创新、改进

- 技术支持

---

### 部门功能列表/定义 - 测试部

- 制定测试计划，构建测试用例

- 测试执行

- 测试报告

- 缺陷跟踪

- 测试系统，测试环境构建

---

### 研发活动清单

TBD

---

### 研发活动定义

TBD

---

### 研发部岗位清单

项目经理

 - 项目规划
 - 项目组织
 - 项目协调

---

### 研发部岗位定义（JD）

TBD

---

### 前置条件识别

<hr width="35%" align="left" />

项目部工作前置条件

研发部工作前置条件

测试部工作前置条件

---

固件开发前置条件

```
若条件不适用，则该开发工作的全周期将不适用
开发活动激活后引入新的约束条件将构成新的开发活动
```

{% plantuml %}
@startmindmap
+ 固件开发
++_ 电子方案冻结（电路图）- pdf文档
++_ 交互逻辑（MMI） - pdf文档
++_ 通信协议冻结 - ldf文件，dbc文件，excel文件
++_ 诊断规范相关文件，CANoe工程
++_ 功能测试方案，测试例
++_ 诊断测试用例
++_ 对手件，上位机
@endmindmap
{% endplantuml %}

---

{% plantuml %}
@startmindmap
+ root node
++ some first level node
+++_ second level node
+++_ another second level node
+++_ foo
+++_ bar
+++_ foobar
++_ another first level node
-- some first right level node
--_ another first right level node
@endmindmap
{% endplantuml %}

---

QT TEST

{% plantuml %}
[First] - [Second]
{% endplantuml %}

---

plantuml demo

{% plantuml %}
[First] - [Second]
{% endplantuml %}

---

mermaid demo

{% mermaid %}
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
{% endmermaid %}

