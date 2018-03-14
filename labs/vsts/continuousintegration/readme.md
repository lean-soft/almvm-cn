---
title: Continuous Integration using Visual Studio Team Services
layout: page
sidebar: vsts
permalink: /labs/vsts/continuousintegration/
folder: /labs/vsts/continuousintegration/
---

Last updated : {{ "now" | date: "%b %d, %Y" }}.

## 概述

持续集成（CI）是尽可能频繁地将代码集成到共享存储库的过程。 在代码集成过程中，自动化的生成可以实时显示生成中断信息或测试失败信息，并及时通知您代码中的错误。

当许多开发人员在复杂的软件项目上进行协作时，将不同部分的代码集成在一起可能是一个漫长且不可预测的过程。但是如果持续构建和部署项目，则可以使此过程更高效、更可靠。

Visual Studio Team Services简化了应用程序的 <a href="https://www.visualstudio.com/en-us/docs/build/overview/">持续集成</a> ，无论您的目标平台是什么，或者使用的是什么开发语言。VSTS 团队生成都可以让您：

- 在Linux，Mac和Windows平台生生成应用

- 使用私有或托管（Azure）的构建代理

- 使用跨平台构建代理来生成Android，iOS，Java，.NET和其他应用程序

- 将生成与工作，测试，代码和发布无缝集成

- 通过实时生成状态跟踪您的代码质量

## 必要条件

为了完成这个实验，你需要- 

- **Visual Studio Team Services帐户**: 如果您没有，你可以从 [这里](https://www.visualstudio.com/){:target="_blank"} 注册。

- **Visual Studio 2017** 或更高版本

- 您可以使用 **[VSTS Demo Data generator](http://vstsdemogenerator.azurewebsites.net/Environment/Create)** 在您指定的VSTS账户装创建一个包含初始化数据的样例团队项目。请使用 ***My Health Clinic*** 模板来完成手实验室。

如果您未使用 VSTS Demo Data Generator，则可以从此 [GitHub repository](https://github.com/Microsoft/myhealthclinic2017) 克隆代码。

## 练习1：构建ASP.NET Core应用

ASP.NET Core是一个用来构建Web或Cloud应用的精益且可组合框架。本练习将向您展示如何自动构建ASP.NET Core的HealthClinic应用程序。

如果您使用 **demo generator** 创建了样例项目, 会自动为您创建生成定义. 您可以在不添加或修改生成任务的情况了解VSTS的整个自动化生成过程。当然您可以按照步骤创建一个新的生成定义。

### 任务1：创建新的生成定义

1. 在您的VSTS账户概述页面上，选择您的团队项目。

2. 点击 **Build and Release** 选项卡并选择 **Builds**。

3. 点击 **New** 创建构建定义。

   <img src="images/1.png" width="624"/>

4. 您可以选择一个与您当前生成应用类型相匹配的预定义模板，或者创建一个空的定义从头配置生成定义。预定义模板中有一个可用于生成ASP.NET Core应用程序的模板。选择 **ASP.NET Core** 并单击 **Apply** 以应用该生成定义的模板

   <img src="images/3.png" width="624"/>

5. 如您所见，该模板已添加了一组通常涉及生成ASP.NET Core应用程序的任务。在很多情况下，除了重新配置代码存储库以及分支之外，您可能不需要做任何其他事情。在本次练习中您需要对构建进行一些自定义。

选择  **Process** 这里有一些重要的配置。您需要选择要运行此生成的生成代理。您可以选择在预置代理上运行生成或使用托管在Azure上的代理。这里我们选择使用Hosted VS2017代理，因为它具有.NET核心框架以及生成应用程序所需的所有其他组件。

   <img src="images/4-1.png" width="624"/>

然后选择 **Get sources** 任务。您可以从包括 **GitHub，SVN或任何其他Git存储库的各种源** 获取您的代码，但由于您在VSTS项目本身中有到导入的样例代码，请选择 **This Project**。如果 **Repository** 和 **Branch** 尚未指向正确的存储库和分支，请按下图设置更改。

   <img src="images/4.png" width="624"/>

6. 接下来的  **Restore** 任务不需要更改，保持原状。

7. 保存生成定义。

8. 通过单击名称，然后将生成定义重命名为 **MHC.Web.CI**，再次保存生成定义。

<img src="images/5-1.png" width="624"/>

The My Health Clinic Web应用程序依赖于节点组件和附加库。您需要添加任务才能下载和安装这些软件包，然后才能生成应用。我们将看到如何在下一个任务中将其他任务添加到我们的生成定义中。

### 任务2：添加生成任务

1. 选择添加 **Add Task**，然后选择 **Package** 来查找与该类别相关的任务。选择 **npm** 并单击 **Add**。将它放在 **Build** 任务之后。您可以拖放任务以对其重新排序。

    <img src="images/5.png" />

2. Change the *working folder* to ***src/MyHealth.Web***. The project has the json file which the npm install command will require to know what packages needs to be installed.
将 **working folder** 更改为 **src/MyHealth.Web**。样例应用包含说明需要安装哪些软件包的json文件，npm install命令会根据这个文件安装依赖。 

    <img src="images/6.png" width="624"/>
  
    >  接下来，您需要运行 **bower** 来安装Web包。您可以使用 **Command Line/Shell Script** 任务运行bower命令，但更好的方法是使用 **Bower** 任务。此任务不是开箱即用的，需要从 **Marketplace** 中安装。
    
如果您在使用 **VSTS Demo Generator** 时没有安装Bower，则可以从另一个选项卡导航到 **Marketplace** 上的<a target ="blank" href="https://marketplace.visualstudio.com/items?itemName=touchify.vsts-bower">Bower扩展页面</a>并安装它。完成后关闭选项卡，返回到编辑生成定义的选项卡。

3. 保存生成定义并刷新页面。您应该在 **Package** 选项卡下看到 **Bower** 任务。选择任务并单击 **Add**。

    <img src="images/7.png" />

4. 选择**Bower**任务并更改 **Bower JSON Path** 路径以指向MyHealth.Web文件夹下的 **bower.json** 文件。

    <img src="images/8.png" />

5. 接下来，您将需要 **gulp** 任务。Gulp可以执行压缩文件等任务。点击 **Add Task**，在添加任务界面的 **Build** 分类下选择 **Gulp**。将其添加到生成定义。

    <img src="images/8-1.png"/>

6. 将**Gulp file path**更改为指向MyHealth.Web文件夹下的gulp文件

    <img src="images/9.png"/>

7. 其余任务不需要任何改变。您已准备好运行生成。当前生成可以以 **Continuous Integration** 的形式运行，以便它在分支上的每次提交时被触发并运行。我们稍后会在实验室中看到。现在，我们将手动运行它。

8. 选择 **Save & queue** 保存生成定义并立即对生成进行排队。如果您已保存生成定义，请从菜单中选择 **Queue**。

    <img src="images/14.png" width="624"/>
         
9. 您将看到生成会先等待找到要运行的代理。这可能需要几分钟的时间，当生成一旦获得代理，生成便开始执行。您可以在生成运行时实时查看输出日志。如果需要更深入的分析生成过程，您也可以稍后下载生成日志。

    <img src="images/18.png"/>

10. 完成所有步骤后，您可以选择顶部的 **Build number** 以获取有关运行的详细信息。 **Summary** 选项卡显示运行摘要，包括谁触发了它，在什么时候提取了哪些代码和提交，关联的工作项，测试等信息。

    <img src="images/19.png"/>

11. **Timeline** 视图将帮助你找出每个任务的运行时长。如果构建定义包含发布任务，并且发布了文件，您可以从 **Artifacts** 选项卡中找到它。
   
       <img src="images/20.png"/>

现在我们将看到如何在生成定义中处理变量，设置不同的触发机制等。

## 练习2：定义生成定义的属性

1. 从您的VSTS帐户转到您的 **Build** 页面。

2. 编辑构建定义并单击**Options**。

   <img src="images/21.png" width="624"/>

   > **Description:** 如果您在此处指定描述，那么当您在团队项目的**Build**区域中选择它时，它将显示在生成定义的名称附近。

   > **Build number format:** 如果将其保留为空，则完成的内部版本将被赋予一个唯一的整数作为其名称。但是你可以为生成指定更多有用的名称信息，这对你的团队来说很有意义。您可以使用组合令牌、变量、下划线以及字符的组合。

   > **Default agent queue:** 选择运行此定义的代理池的队列。要构建代码或部署软件，您至少需要一个代理。在项目代码和人员不断增加时，您可能还需要更多代理。

   > **Build job authorization scope:** 指定生成作业的授权范围。 **Project Collection**：如果构建需要访问多个团队项目请指定为 **Project Collection**。

   > **Demands:** 使用需求来确保生成需要的功能存在于运行它的构建代理上。需求由构建步骤自动声明或由您手动声明。通过此设置也能做到指定代理运行生成的目的。

3. 点击**Triggers**。在**Triggers**选项卡上，指定如何触发生成。您可以对同一个生成同时设置**CI**和**Scheduled**。

   > **Continuous integration (CI):** 如果您希望每次签入代码时运行生成，请选择此触发器。

   > **Batch changes:** 如果您有许多团队成员经常推送提交，并希望减少正在运行的生成数量，请选中此复选框。如果勾选此选项，则在生成运行时有人提交代码，系统会等待构建完成，然后将尚未构建的所有更改的在下次生成中统一编译。

   > **Branch filters:** 您可以指定要触发构建的分支，也可以使用通配符。

   > **Path filters:** 您还可以指定在指定分支的目录下的文件被修改时触发生成，也可以排除指定目录的文件修改时触发生成。

   <img src="images/22.png" width="624"/>

4. 点击 **Scheduled**。选择要运行生成的日期和时间并进行相应配置。

   <img src="images/23.png" width="624"/>
   
5. 点击 **Retention** 标签。在大多数情况下，您不需要保留的生成超过保留策略的天数，系统会自动删除旧的完成版本，使得生成结果列表更精简。

您可以在生成定义的 **Retention**选项卡上修改这些策略。

6. 点击 **Variables** 选项卡。我们可以添加新的用户自定义变量。

   > - BuildConfiguration: release 
   > - BuildPlatform: any cpu
   > - WebDir: src/MyHealth.Web
   > **Secret Variables:** 如果包含密码，密钥或其他需要避免暴露的其他类型数据，我们建议您创建 **Secret** 变量。

   <img src="images/24.png" width="624"/>

7. 现在修改生成步骤以使用自定义变量。在**npm**任务的工作目录属性中使用**WebDir**变量。

   <img src="images/26.png" width="624"/>

8. 保存构建。

## 练习3：使用 Artifacts

**Artifacts**是应用程序的可部署组件。Visual Studio Team Services能够在构建期间自行配置**Artifacts**的内容。

1.  转到生成定义并选择 **Publish** 任务。请注意，该任务有两个属性：

    * **Publish Web Projects** - 选中此项后，任务将尝试查找代码存储库中的Web项目并运行publish命令。*wwconfig**文件或**wwwroot**文件夹是用来标识Web项目。
    * **Zip Published Projects** - 择此选项后，由publish命令创建的文件夹将被压缩

    <img src="images/33.png" width="624"/>

2. 保存并排队生成。生成完成后，转至生成摘要页面并选择 **Artifacts** 选项卡。点击**Explore**按钮以查看已发布的工件

   <img src="images/34.png" width="624"/>

3. 展开drop文件夹，您应该看到文件夹中创建的 **MyHealth.Web.zip** 文件 
   <img src="images/35.png" />

4. zip文件需要用于部署。我们将在 ***Continious Delivery*** 实验室中介绍
   

## 练习4：在生成中运行测试

在生成中运行测试是验证代码集成质量的最佳实践。

样例代码***MyHealth.API.IntegrationTests***项目包含单元测试。

<img src="images/36.png" />

如果您在Visual Studio中打开**My Health Clinic**解决方案，则会在**Test Explorer**窗口中看到以下测试用例。

<img src="images/37.png" />

The **Test** task that we have in the build defintion will need to be modified to point to the test projects in the repository. 
我们在生成定义中的 **Test** 任务将需要修改以指向存储库中的测试项目。

1. 跳转到您的构建定义并选择编辑。

2. 选择 **Process** 任务。将项目更改为**Project(s) to test**，任务参数如下所示：
    * **ProjectS) to test**: test/MyHealth.API.IntegrationTests/*.csproj

   <img src="images/38-1.png" width="624"/>

3. 选择 **Test** 任务,更改**Arguments**中的参数，如下所示：
    * **Arguments**: --configuration $(BuildConfiguration) --logger "trx;LogFileName=TestResults.xml"

   <img src="images/38.png" width="624"/>

4. 我们将使用**Publish Test Result**任务将测试结果发布到**生成摘要**部分。添加任务并更改参数，如下所示：
    - Test Result Format: VSTest
    - Test Results Files: **/TestResults.xml
    - Always run: true - 确保在单元测试失败时发布结果。
   <img src="images/40.png" width="624"/>
   <img src="images/40-1.png" width="624"/>

5. 保存生成定义并排队。

6. You should see the build summary showing along with Test results.您应该看到在生成摘要上显示的测试结果。

   <img src="images/41.png" width="624"/> 

7. Click on **Test** to view detailed summary of Test Results. Make sure that you selected *All* for the **Outcome** filter
点击 **Test** 查看测试结果的详细摘要。确保您在**Outcome**筛选器上选择了**All**。

   <img src="images/42.png" width="624"/>

8. 我们现在有一个自动持续集成生成，其自动化测试将在每次提交更改时运行并验证更改不会产生Bug。下一个实验将涵盖 **Continuous Delivery (CD)** - 能够持续地将应用发布到各种环境中，包括开发，临时，生产。
