---
title: 使用Visual Studio 团队服务管理测试计划
layout: page
sidebar: vsts
permalink: /labs/vsts/testmanagement/
folder: /labs/vsts/testmanagement/
---

Last updated : {{ "now"|date: "%b %d, %Y" }}.

## 概述

 在本实验中，您将学习如何使用Visual Studio 团队服务管理项目的测试生命周期。本实验将指导您创建有效设计的测试计划，以验证您的软件里程碑。您还将创建并执行手工测试，这些手工测试可以在每次发布时重复执行

## 测试管理器扩展

您需要**测试管理器**扩展才能在Visual Studio 团队服务帐户中获得完整的测试功能。该扩展包含在Visual Studio Enterprise，MSDN Platforms和Test Professional订阅中。如果您没有任何订阅，那么您需要从[Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=ms.vss-testmanager-web)获取或申请试用版。请参阅下面的**安装测试管理器扩展**部分，了解如何安装扩展。

## 任务1: 创建测试计划

Visual Studio 团队服务(VSTS)允许团队将测试用例组织到测试计划内部的测试套件层次结构中。测试计划用于跟踪迭代或里程碑中的手工测试。这样，您可以看到特定迭代或里程碑的测试何时完成。我们先来创建一个新的测试计划。

1.转到您的Visual Studio团队服务(VSTS)帐户和项目。选择**测试**中心。

1.点击**绿色的+号**，创建一个新的**测试计划**。我们将创建一个测试计划，用于测试Sprint1中的待办事项。命名测试计划，并选择迭代 ***MyHealthClinic \ Sprint 1***

   ![](images/1.png)

   ![](images/2.png)

1.现在添加一个**测试套件**，用来对测试用例进行分组。您可以创建三种类型的测试套件: 

   * 静态测试套件就像文件夹。一个静态测试套件可以包含测试用例和其他套件。
   * 基于需求的套件源自产品待办事项，用户故事或其他需求。该套件包含所有与其要求相关的测试用例。这种类型可以帮助您跟踪每项需求的测试情况。
   * 基于查询的套件显示您定义的查询结果。例如，您可以选择Priority = 1的所有测试用例。

1.展开新创建的套件旁边的下拉菜单，然后选择**新的基于需求的套件。**

   ![](images/4.png)

1.添加一个过滤条件，按sprint的迭代路径进行过滤，然后单击**Run query**。在积压工作项列表中选择要测试的sprint中的积压工作项，并选择**创建套件**，通过创建测试套件，将它们添加到您的测试计划中。
   ![](images/5.png)

1.现在，您可以开始添加测试用例。选择要添加测试用例的积压项目，然后选择**New Test Case**

   ![](images/6.png)

1.输入测试用例的名称并添加一些测试步骤。每个步骤都包含一个**Action**，它描述了测试人员需要执行的操作。可选地，一个步骤可以包括**预期结果**，其描述给定操作的预期结果。如果需要，您可以将附件添加到步骤中。

   ![](images/newtestcase.png)

1.选择**Save＆Close **保存测试用例并返回上一页

1.虽然您可以一次创建一个测试用例，但使用网格布局来快速添加许多测试用例有时更容易。在测试用例面板中，选择**New \|New test case using grid**。

   ![](images/7.png)

1.输入一些测试用例。完成后选择**Save All**按钮，然后选择**View: Grid**切换回列表视图

   |Title|Step Action| Step Expected Result|
   |-----|-----------|---------------------|
   | Appointments on Dashboard Page |            |       |
   |                               | Navigate to the main page | Home page should be displayed     |
   |                               | Click on **Private area** | Login screen displayed            |
   |                               | Enter Username           |                                   |
   |                               | Enter Password           |                                   |
   |                               | SelectLogin button       | dashboard screen displayed        |
   | Create New Appointment        |                          |                                   |
   |                               | Navigate to the main page | Home page should be displayed     |
   |                               | Click on **Private area** | Login screen displayed            |
   |                               | Enter Username           |                                   |
   |                               | Enter Password           |                                   |
   |                               | Click on Login button    | dashboard screen displayed        |
   |                               | Select Appointments      | Appointments main screen displayed |

   ![](images/testcasegrid.png)

## 任务2: 运行手工测试

您可以运行手工测试并使用Microsoft Test Runner记录每个测试步骤的测试结果。您还可以捕获并附加文件和屏幕快照到测试中，并将它们与测试结果一起保存。

Microsoft Test Runner既可以在Web上使用，也可以作为Windows桌面客户端使用。如果您正在测试基于Web的应用程序，或者只是想在测试桌面应用程序时捕获屏幕录像，请使用基于Web的Microsoft Test Runner。当您想要在测试桌面 App时想收集更多类型的数据，推荐Windows客户端。

我们将使用基于web的测试执行器，因为我们正在测试一个web应用程序。

1.右键单击先前创建的测试用例，然后点击**Run**开始测试执行。

   ![](images/30.png)

1.您可以选择**Run with Options**来自定义每个测试运行。第一个选项是选择一个**Runner**，这里其实就是一个浏览器。接下来，您可以选择指定收集**数据的类型**。最后，您可以选择指定正在测试哪个构建，以便更容易地将结果与它们来自的构建相关联。

   ![](images/31.png)

1.如果"测试运行程序"窗口未出现，请检查窗口是否被弹出窗口阻止程序阻止。如果是，请单击弹出窗口阻止程序按钮，选择**始终允许**，然后单击完成。然后，您可以成功启动**Test runner**窗口。

   ![](images/popupblocker.png)

1. 您现在可以看到**Test Runner**窗口。

   ![](images/35.png)

1.在执行测试步骤时，您可以捕获每个步骤的结果。如果步骤导致预期结果，则可以通过选择测试步骤旁边的OK符号将步骤标记为"已通过"。要将测试步骤标记为"失败"，您可以选择取消符号。您也可以右键单击测试步骤来标记结果，还可以将注释和附件添加到测试步骤中。

   ![](images/stepresults.png)

### 捕获丰富的数据

通常，当您进行手工测试时，您只想捕获通过或失败状态。Microsoft Test Runner允许您捕获丰富的信息，包括屏幕截图，操作日志，甚至屏幕录制。

1.您可以使用Test Runner窗口顶部的按钮捕捉屏幕截图或开始/停止录制视频。

   ![](images/capturescreenshot.png)

   您需要从下拉列表中选择一个打开的窗口，从中捕获屏幕截图。

1.您还可以捕获与您正在测试的应用程序的交互作为图像操作日志。这在识别错误​​并想记录导致错误的步骤时非常有用。要开始录制您的操作，请选择**Capture user actions ...**图标并选择包含您正在测试的应用程序的窗口

   ![](images/captureuseraction.png)

1.选择**开始**开始捕捉操作。测试执行器将记录您在应用程序中的所有操作。

   >如果您在记录操作时创建了一个Bug，那么收集到的所有操作数据都将包含在该Bug中。

1.选择**停止**按钮完成捕操作。操作日志将作为附件添加到测试结果中。

   ![](images/imagelogattach.png)

1.要查看捕获的数据，您可以单击附件在浏览器中打开它

   ![](images/imagelog.png)

## 任务4: 创建共享步骤

共享步骤将通常按顺序执行的多个步骤合并为一个逻辑步骤，可以跨测试共享。如果共享步骤定义的过程未来发生变化，则可以在一个地方更新共享步骤，并将在所有引用它的测试中反映出来。

您可能已经注意到了，在上面创建的两个测试用例中重复了登录序列。这是分享步骤的完美人选。我们将其转换为共享步骤。

1.打开上面创建的"创建新约会"测试用例

   ![](images/testcasecreatenewappt.png)

1.选择步骤1-5(使用**Shift +点击**)并右键单击并选择**创建共享步骤**

   ![](images/createsharedsteps.png)

1.为共享步骤提供一个名称，然后单击**创建**。

   ![](images/51.png)

1.现在您可以看到您选择的步骤被替换为新共享步骤的链接。您可以双击链接打开查看/编辑的共享步骤。

   ![](images/52.png)

1.单击**Save＆Close**保存测试用例。

1.您可以在其他测试用例中使用共享步骤。打开你创建的另一个测试用例。**删除**您想要替换的步骤。选择**插入共享步骤**按钮

   ![](images/53.png)

1.这将带有一个查询窗口，查询窗口将获取**Microsoft.SharedStepsCategory**的所有工作项。如果需要，您可以添加更多过滤条件。点击**运行**执行查询。选择我们上面创建的共享步骤，然后选择**Insert shared steps **按钮

   ![](images/54.png)

 当你现在运行测试用例时，共享步骤将被扩展。您可以将整个序列标记为已通过或失败，或分别标记每个步骤。

## 任务5: 分析测试结果

1.在此任务中，您将学习如何查看手工测试运行的结果。

1.选择**Test** 中心下面的 **运行** 选项卡。双击最近的测试执行将其打开。

   ![](images/44.png)

1. **Run summary**选项卡提供了测试运行的概述，以及作为运行一部分的所有测试结果的高级详细信息。

   ![](images/45.png)

1.选择**测试结果**选项卡。此选项卡列出运行中包含的每个单独测试用例的结果及其结果。由于这里只包含一个测试用例，请双击它打开。

   ![](images/46.png)

1.你可以从这里查看这个特定测试用例的所有细节。

   ![](images/47.png)

1.在测试执行时，检查此过程中每个步骤的结果。

   ![](images/48.png)

1.如果您更新了测试结果，则可以选择**更新分析**来更改测试所有者、测试结果和解决方式

   ![](images/updateanalysis.png)

## 安装测试管理器扩展

1.要获取**Test Manager**扩展程序的完整版或试用版，请点击**购物车**图标，从您的帐户中选择**Browse MarketPlace**。

   ![](images/25.png)

1.在**Visual Studio 团队服务**选项卡下面的搜索框中搜索**Test Manager **扩展。

   ![](images/26.png)

1.单击**Start Trial**安装扩展。

   ![](images/27.png)

1.选择要安装扩展的帐户，然后单击**继续**。

   ![](images/28.png)

1.你应该会看到一条确认消息。点击**确认**继续进行安装。

   ![](images/29.png)

1.试用扩展可供所有用户使用。如果您已经申请了测试管理器扩展的试用版本，则不必再做任何事情。您已准备好开始使用Visual Studio 团队服务的测试管理功能。
