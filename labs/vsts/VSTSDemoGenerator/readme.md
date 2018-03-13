---
title: Visual Studio 团队服务 Demo 生成器- 概述 
layout: page
sidebar: vsts
permalink: /labs/vsts/VSTSDemoGenerator/
folder: /labs/vsts/VSTSDemoGenerator/
---

Last updated : {{ "now" | date: "%b %d,%Y" }}.

## 概述

Visual Studio 团队服务 Demo 生成器 帮助我们在Visual Studio 团队服务帐户上创建项目，该项目内置示例内容包括源代码、工作项、服务端点、构建和发布定义.

此工具用于帮助Visual Studio 市场团队创建基于VSTS的实验、演示、和培训所需的资源.

准备工作:

- **Visual Studio Team Services帐户**: 如果您没有，你可以从 [这里](https://www.visualstudio.com/){:target="_blank"} 注册。
- 此帐号下的**PAT(Personal Access Token)访问令牌**. 关于如何创建PAT访问令牌，可以参考[这里](https://docs.microsoft.com/en-us/vsts/accounts/use-personal-access-tokens-to-authenticate)

## 生成器使用方法：

1. 用浏览器打开生成器： [VSTS Demo Generator](https://vstsdemogenerator.azurewebsites.net/)

   ![](images/1.png)

1. 输入 ***VSTS 帐户名称*** 和 ***PAT(Personal Access Token)访问令牌*** ，最后点击**验证并继续（Verify & Continue）**。

   ![](images/2.png)

1. 输入你的示例项目名称，然后再下拉列表中选择一个示例项目模板

   ![](images/3.png)

1. 有些模板需要在你的VSTS项目中安装扩展，系统会先检测是否已经安装这些扩展，绿色的标记表示已经安装，没有安装建议安装扩展，跟据提示会进入VSTS的扩展商店，在商店可以完成扩展的安装

   ![](images/4.png)

1. 点击**安装（Install）**，安装扩展到你的VSTS项目中。

   ![](images/5.png)

1. 扩展安装完成后, 返回 VSTS Demo Generator tab 页面并刷页面. 点击 **创建项目（Create Project）**. 你可以看到正在创建项目，这其中会有状态反馈.

   ![](images/6.png)

1. 当项目创建成功后，会看到创建好的团队项目链接。

   ![](images/7.png)

1. 点进链接，导航到项目主页面，检查并确认项目是否正确创建.

   ![](images/8.png)

>**Note:** 你需要为创建的端点提供您自己的信息，如url、用户名、密码等。在尝试使用它们之前，需要提供它们，比如在构建版本中、发布定义中.