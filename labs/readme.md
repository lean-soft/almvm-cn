---
title: Visual Studio Team Services- Hands-on-Labs 
layout: homepage
sidebar: vsts
permalink: /labs/vsts/
folder: /labs/vsts/
---

<div class="vstsMain">
<div class="productcolmain">
  <div class="pageheader">
             <b>基于Visual Studio Team Services的DevOps管理</b> </div>
     <div class="herotext2">       
             了解如何使用Visual Studio Team Services更好地进行规划，协同编码并提高软件交付效率
  </div>
</div>
</div>

## 实验教程

<div class="lablist">
    <div class="header2"> <b>开始</b></div>
     <ul class="fa-ul">
       <li class="labslistitems"><i class="fa-li fa fa-book" style="color:  #002868;"></i> <a href="agile/">敏捷规划和项目组合管理 </a>    </li>
       <li class="labslistitems"><i class="fa-li fa fa-book" style="color:  #002868;"></i> <a href="git/">基于Git的源代码版本管理 </a>    </li>
       <li class="labslistitems"><i class="fa-li fa fa-book" style="color:  #002868;"></i> <a href="packagemanagement/">包管理</a> </li>
       <li class="labslistitems"><i class="fa-li fa fa-book" style="color:  #002868;"></i> <a href="continuousintegration/">建立持续集成</a> </li>
       <li class="labslistitems"><i class="fa-li fa fa-book" style="color:  #002868;"></i> <a href="continuousdeployment/">启用持续交付</a> </li>
       <li class="labslistitems"><i class="fa-li fa fa-book" style="color:  #002868;"></i><a href="azurecd/">从Azure门户设置持续交付工作流程</a> </li>
       <li class="labslistitems"><i class="fa-li fa fa-book" style="color:  #002868;"></i><a href="testmanagement/">使用Visual Studio Team Services进行测试计划和管理</a> </li>
       <li class="labslistitems"><i class="fa-li fa fa-book" style="color:  #002868;"></i><a href="exploratorytesting/">使用Visual Studio Team Services进行探索性测试和反馈管理</a> </li>
       <li class="labslistitems"><i class="fa-li fa fa-book" style="color:  #002868;"></i><a href="selenium/">基于Selenium框架的界面自动化测试</a> </li>
      <li class="labslistitems"><i class="fa-li fa fa-book" style="color:  #002868;"></i><a href="load/">使用Visual Studio Team Services进行压力测试</a> </li>
      <li class="labslistitems"><i class="fa-li fa fa-book" style="color:  #002868;"></i><a href="monitor/">使用Application Insights监控应用程序</a> </li>
      <li class="labslistitems"><i class="fa-li fa fa-book" style="color:  #002868;"></i><a href="teams/">增加团队协作并与Microsoft团队沟通</a> </li>
      <li class="labslistitems"><i class="fa-li fa fa-book" style="color:  #002868;"></i><a href="powerbi/">使用Power BI连接到Visual Studio Team Services</a> </li>
        </ul>
</div>

## 必要条件

为了完成你需要的这些实验

- **Visual Studio Team Services 账户**: 如果您没有，你可以从 [这里](https://www.visualstudio.com/){:target="_blank"} 注册 

- **Microsoft Azure Account**: Azure相关实验需要一个激活的有效且Azure帐户。 如果您还没有，可以注册 [免费试用 ](https://azure.microsoft.com/en-us/free/){:target="_blank"} 。

  - 如果您有Visual Studio Active 订阅账户，您有权每月获得一个 $50- $150 的Azure信用额度。您可以参考此 [链接](https://azure.microsoft.com/en-us/pricing/member-offers/msdn-benefits-details/){:target="_blank"} 以了解更多信息，包括如何激活并开始使用您的月度Azure信用额度.

  - 如果您没有Visual Studio Active 订阅账户, 则可以注册免费的 [Visual Studio Dev Essentials](https://www.visualstudio.com/dev-essentials/){:target="_blank"} 流程来创建 **Azure 免费账户** (包含1年免费服务，第1个月200美元额度)。

- **Visual Studio 2017** 或更高版本 - 您将在一些实验中使用Visual Studio. 您可以在安装了VS 2017的个人电脑上, 或者下载使用最新的 [ALM VM](../tfs/),  或者在 [Azure](https://portal.azure.com){:target="_blank"} 上使用预安装了Visual Studio的虚拟服务器。

- 您可以使用 [**Visual Studio Team Services Demo Data generator**](https://vstsdemogenerator.azurewebsites.net){:target="_blank"} 在您的您的Visual Studio Team Services帐户中创建包含预定义数据的团队项目.

## 使用VSTS DemoGenerator

**Visual Studio Team Services Demo Generator** 可帮助您在Visual Studio Team Services帐户上创建包含初始化数据的团队项目， 数据包括源代码，工作项目，服务终端，基于您选择的模板的构建和发布定义。这个系统的目的是帮助您更好的完成由微软提供的动手实验，演示和其他教育材料。有关使用**Visual Studio Team Services Demo Generator** 设置项目的分步说明，请参阅此 [文档](/labs/vsts/VSTSDemoGenerator)

如果您未使用 **VSTS Demo Data Generator**， 则可以从此 [GitHub repository](https://github.com/Microsoft/myhealthclinic2017) 中克隆运行实验中引用的应用程序源代码。
