---
title: Agile Planning and Portfolio Management with Visual Studio Team Services
layout: page
sidebar: vsts
permalink: /labs/vsts/agile/
folder: /labs/vsts/agile/
---

最终更新时间 : {{ "now" | date: "%b %d, %Y" }}.

## 概述

本实验中，您将了解如何关于Visual Studio Team Services的敏捷规划与项目组合管理工具及流程，以及VSTS如何帮助您快速规划，管理与跟踪整个团队的工作。您将了解产品待办事项，冲刺待办事项以及可用于在迭代期间跟踪工作流程的任务板。我们还将学习当前工具版本中如何在扩展更大的团队和组织得到增强。

## 必要条件

要完成此实验，您需要：

- **Visual Studio Team Services帐户**: 如果您没有，你可以从 [这里](https://www.visualstudio.com/){:target="_blank"} 注册。

- **Visual Studio 2017** 或更高版本

- 您可以使用 **[VSTS Demo Data generator](http://vstsdemogenerator.azurewebsites.net/Environment/Create)** 在您指定的VSTS账户装创建一个包含初始化数据的样例团队项目。请使用 ***My Health Clinic*** 模板来完成手实验室。

## 连接到您的项目

1. 打开您的VSTS帐户主页。

1. 点击 **Visual Studio** 图标并浏览到MyHealthClinic项目。当前我们只有一个项目。您可以从这里 **选择/创建** 许多项目。

   {% include note.html content= "如果您还未准备好, 您可以在 (https://{youraccount}.visualstudio.com) 登陆您的Visual Studio Team Services 账户。" %}

   ![](images/6.png)

## 练习1：创建团队，区域和迭代

1. 连接到 **MyHealthClinic** 项目。

1. 通过选择齿轮图标导航到 **管理** 页面。

    ![](images/7.png)

1. 查看已经创建的3个团队，分别是： **MyHealthClinic Team, Team1, and Team2**。
    默认团队与您的VSTS项目具有相同的名称。您可以按需要从这里创建新的团队。

    ![](images/8.png)

1. 单击每个团队旁边的省略号并选择删除，删除 **Team 1** 和 **Team 2** 。

    ![](images/71.png)

1. 现在通过点击 **New team** 链接创建一个名称为 **Web** 的新团队。确保勾选 **Team area** 。 此选项将为团队创建相应的区域，以便他们可以将工作项与其他团队分开。 如果您不选择此选项，则必须在创建团队时为团队设置默认区域路径。按照相同的步骤创建一个名为 **Database** 的团队。

    ![](images/72.png)

    ![](images/73.png)

1. 在 **Overview** 页面上，点击默认团队查看成员。可以看到当前用户为唯一成员。

    ![](images/10.png)

1. 点击 **Add** 按钮向团队添加新成员。

    ![](images/11.png)

1. 因为我们目前在  **Web** 团队管理界面中。我们需要返回到默认团队来设置子区域路径的管理。

    ![](images/74.png)

1. 选择顶部的 **Work** 选项卡，然后选择 **Areas** 选项以查看团队的区域路径。

    ![](images/75.png)

1. 现在我们要更改管理区域的区域路径设置以包含子区域路径。所有团队的默认设置是排除子区域路径。我们会将其更改为包含子区域，以便团队了解所有团队的所有工作项。管理团队也可以选择不包含子区域，当您将工作项分配给其他团队，工作项会从其视图中删除。单击 **MyHealthClinic** 的省略号并选择 **Include sub-areas**。

    ![](images/76.png)

1. 转到 **Iterations** 并单击 **Select Iteration** 。 选择 **Sprint 1**. 重复此步骤添加 **Sprint 2**.

    ![](images/16.png)

    {% include important.html content= "您可能需要调整冲刺的日期，选择与当前日历日期相对应的日期。" %}

1. 在 **Default iteration** 旁点击 **Change** 将MyHealthClinic设置为默认迭代。

    ![](images/17.png)

    ![](images/18.png)

1. 在 **Web** 团队和 **Database** 团队设置页面重复步骤11和12。 您能在左上角团队名称显示的下拉菜单中切换近期访问的团队项目以及团队。如果您没有看到所需的团队或团队项目，请单击 **Browse…** 浏览所有团队项目和团队。

    ![](images/77.png)

## 练习2：VSTS中的工作项

1. 从项目/团队下拉菜单中选择 **MyHealthClinic\Web** ，导航到 **Web** 团队仪表板。

    ![](images/21.png)

1. 下面让我们创建第一个 ** Product Backlog** 工作项. 在 **New Work Item** 小部件上, 输入标题 **Create appointment** 并将工作项类型更改为 **Product Backlog**. 我们还可以创建Bug，任务，功能和其他几种工作项类型。

    ![](images/22.png)

1. 在打开的产品积压工作项界面的 **Description** 中输入 **As a user, I want to create appointments。**  **Acceptance criteria** 输入 **Any user can create appointments. After creating an appointment, it should appear in the user appointment list.**

    ![](images/23.png)

1. 点击 **Save & close**.

1. 选择 **MyHealthClinic Team** ，导航到默认团队的积压工作页面。如果当前页面不在 **Work** 上，请从顶部菜单中单击 **Work** 选项。

    ![](images/77.png)

1. 重复上述步骤，如果您使用了 **[VSTS Demo Data generator,](http://vstsdemogenerator.azurewebsites.net/Environment/Create)** ，则可以在默认团队的积压列表中查看预定义的工作项。

    ![](images/24.png)

1. 选择需要的产品待办事项工作项，将其拖放到当前冲刺中。在这种情况下，当前的冲刺恰好是 **Sprint 1**。

    ![](images/25.png)

## 练习3：在看板中工作

1. 通过点击 **Work>Backlogs** 页面上的 **Board** 链接访问看板页面。

   ![](images/26.png)

   {% include note.html content= "To maximize a team's ability to consistently deliver high quality software, Kanban emphasize two main practices. The first, visualize the flow of work, requires you to map your team's workflow stages and configure your Kanban board to match. The second, constrain the amount of work in progress, requires you to set work-in-progress (WIP) limits. You're then ready to track progress on your Kanban board and monitor key metrics to reduce lead or cycle time.
   为了最大限度地提高团队持续提供高质量软件的能力，看板强调了两种主要方法：第一种可视化工作流程，要求您按照您团队的工作流程来配置看板，第二，限制正在进行的工作数量，要求设置在制品（WIP）限制，然后在看板上跟踪进度并监控关键指标，以便改进流程减少软件交付中响应环节耗费的时间。

   您的看板会将您的待办事项变为交互式信号板，提供可视化的工作流程。随着工作从创意想法到最终完成，您需要更新看板上的卡片。每一列代表一个工作阶段，每张卡片代表该阶段工作中的用户故事（蓝卡）或Bug（红卡）。
   " %}

1. 我们将修改 **Kanban board** ，以绘制我们团队的工作流程。点击齿轮图标打开设置对话框。

   ![](images/28.png)

1. You can either increase or simplify the information that displays on your cards. Your best bet is to show fields on cards based on what your team frequently refers to or updates when using the **Kanban** and **Task** boards. Make sure the fields for your cards match the following image.
您可以增加或简化卡片上显示的信息。卡片上显示字段最好包含您的团队在使用 **Kanban** 和 **Task** 时经常参考或更新的信息。确保您卡片的字段与下面的图片一致。

    ![](images/78.png)

1. 要使 **Kanban** 上的卡片根据指定的标准更改颜色，请打开 **Styles**。添加样式规则并设置规则的标准。创建  **High Effort** 样式如下。

    ![](images/79.png)

1. 在 **Kanban** 设置界面的 **Cards** 中, 点击 **Tag colors** ，输入标签名称并选择需要展示的颜色. 如果您使用了 **[VSTS Demo Data generator](http://vstsdemogenerator.azurewebsites.net/Environment/Create)** 那么您将已经有一个Doctor标签， 按照下图设置Docker标签为绿色。

    ![](images/80.png)

1. 在VSTS看板中，提供了丰富的自定义选项。 **Annotations** 为工作项提供可视化的提示，显示为工作项定义的任务数或测试数。单击Annotations展开设置或获取更多信息。

    ![](images/81.png)

1. 可以增加或简化在卡片上显示的信息。最好的选择是根据团队在使用Kanban和Task板时经常引用或更新的内容来显示对应的字段。请确保卡片上的字段匹配下图。

    ![](images/82.png)

   看板的第一个最佳实践是可视化工作流程。因此，你的头号任务是想象你的团队的工作流程。工作流程可以通过总结您的团队将用户故事从代办转移到其他状态直到交付所经历的所有过程。

   确定您的团队的工作流程阶段后，您就可以配置您的看板将实际流程映射到看板上。配置完成后，您可以使用看板来更新状态，重新分配工作并重新排列工作项来反映不断变化的优先级。

   我们的团队总结出了这些阶段对于他们的过程至关重要：

   - **积压**: 尚未准备好处理的项目的优先列表。
   - **分析**: 确定并统一了验收标准的认知，以及在开发和测试阶段所需的全部工作。
   - **开发**: 根据工作项的内容编码，并运行单元测试。
   - **测试**: 执行探索性，自动化，集成和其他测试。
   - **完成**: 工作项完成可交付到生产。

1. 将 **New** 列重命名为 **Backlog** 。单击 **+ Column** 创建一个新列。命名新列为  **Analyze** 并设置  **Bug** 和 **Product Backlog Item** （产品积压工作项）的状态映射为  **Approved** 。重命名  **Build and test** 为 **Test**。

    ![](images/83.png)

1. **Test** 列的WIP限制已经设置。也可以为其他列设置限制。从设置页面导航到columns选项卡就可以设置。单击  **Develop** 列，将WIP限制设置为 **3**。

    ![](images/84.png)

    然而，当工作被移动到一个列和工作开始时，通常会有延迟。为了解决滞后情况，并显示正在进行的工作的实际状态，可以打开拆分列。

    当拆分时，每个列都包含两个子列， **Doing** and **Done** 。

    拆分列让团队实现一个拉动模型。没有拆分列，团队就要推动工作向前，以表明他们已经完成了他们的工作。然而，将工作推到下一个阶段并不意味着团队成员立即开始该工作。

1. 现在您已经了解了团队如何使用拆分列，下面是如何打开它们的方法。选择 **Develop** 列，单击 **Split column into doing and done** 选框。对 **Test** 列执行相同的操作。

    ![](images/89.png)

1. 当团队从一个阶段到另一个阶段时，会更新工作状态，这有助于对“完成”的含义达成一致。通过指定每个Kanban列的 **Definition of Done** （完成的定义），可以帮助工作项在移动到下一阶段前，共享其状态。对于 **Develop** 列，添加以下定义：

    ![](images/85.png)

    ![](images/86.png)

    Kanban板支持将工作项从新建到完成的流动可视化。当添加泳道时，还可以支持不同服务级别类的工作状态可视化。可以创建一个泳道来代表需要跟踪的任何其他维度。

    {% include note.html content= "例如，您可以创建三个泳道— **Expedite** ， **Standard** 和 **Park** 来跟踪高优先级的工作、标准优先级的工作和当前被阻断的工作。" %}

1. 在Kanban板，点击 **Configure board settings** ，然后点击Swimlanes，添加泳道 **Expedite** 。

    ![](images/87.png)

1. 现在将默认泳道重命名为 **Standard**。添加一条泳道命名为 **Park**。可以拖动泳道来按照希望的顺序组织它们。拖动 **Park** 在Standard泳道下。

    ![](images/88.png)

## 练习 4: 冲刺计划和任务板

团队在sprint计划会议期间创建冲刺积压工作项，通常在冲刺的第一天召开该会议。每个冲刺都对应一个时间盒，它具备支持团队使用敏捷过程和工具的能力。在规划会议期间，产品负责人与团队合作，确定在冲刺中完成的哪些故事或待办事项。

规划会议通常由两部分组成。第一部分，根据之前的冲刺经验，团队和产品负责人确定团队认为可以在中词中完成的待办事项列表。这些条目会添加到冲刺待办李彪中。第二部分，团队决定如何开发和测试。之后，团队定义和评估完成每个条目所需的任务。最后，团队根据估算做出承诺，实现一部分或全部条目。

### 冲刺计划

冲刺待办事项列表应该包含团队需要的全部信息，以便在分配的时间内成功地规划和完成工作，而不是在冲刺结尾匆匆应对。在开始计划冲刺前，需要创建积压工作项、排列优先级，估算积压工作项以及定义冲刺。

1. 从产品待积压工作项列表中开始规划工作。移动你期望在当前冲刺中工作的条目，一次移动一个条目。将每个条目从产品积压工作项拖到冲刺中。

   ![](images/25.png)

   {% include important.html content= "如果没有在Current或Future看到列出的任何冲刺链接，需要配置团队冲刺时间。" %}

1. 下一步检查所有冲刺工作项的工作量

   ![](images/90.png)

   {% include note.html content= "初始计划应该根据估算的工作量和团队速率确定团队能力范围内的需求子集。团队计划在冲刺时间段内完成的全部工作或故事应与速率匹配。" %}

1. 下一步，需要确定团队的实际容量。速率与团队如何评估需求相关，而容量则与实际的任务时间相关——无论是小时数还是天数。容量工作时间与团队成员、假期、休假和非工作时间相关。

   由于每个团队成员的休假时间在冲刺期间不同，因此以为每个冲刺设置容量。这个容量工具可以帮助你确保团队以及团队成员不会在冲刺中接受过多工作。而且，随着工作的进展，能看到团队是否步入正轨。

   在容量页面，为团队中每个成员输入容量。

   ![](images/91.png)

   {% include note.html content= "大多数团队都以小时为单位设定容量，但是也可以天数设定。例如, 5天相当于一个典型8小时工作日的40小时。选择用来估计完成任务所需时间的单位。

   如果没有看到列出的团队成员，需要将他们添加到团队中。此外，你还需要设定计划的休息日。可以在团队设置中管理周末或其他休息日。

   容量页面提供的其他选项有：复制以前的迭代容量，添加团队成员，添加多个活动。" %}

1. 单击任何用户的 **Days Off** 列。为休息日设置开始和结束日期，这样在该冲刺该用户就有了更多的休息日，当然其工作的容量就少了。

   ![](images/95.png)

   {% include note.html content= "当你给团队成员添加了几天的休息日， **Work Details** 计划图将会自动调整，如果分配给团队成员的工作比当前冲刺的工作时间还要多，那么就会显示红色。" %}

1. 在冲刺积压工作项中，添加一个任务。从冲刺积压工作项创建任务，会自动将任务链接到该积压工作项。

   ![](images/92.png)

1. 填写任务标题并输入对剩余工作的估计。另外，如果知道谁将执行该任务，请将任务分配给该团队成员。

   ![](images/93.png)

   {% include note.html content= "在规划阶段，剩余工作是完成任务所需时间的估计。

   一个好的经验法则是，任务完成的时间不要超过一天。如果任务太大，团队应该将其分解。在某些情况下，在完成其他任务之前，可能无法有效地估算一些任务，此时可以提前创建任务，当有足够信息的时候再去估算。

   在冲刺期间，团队成员更新剩余的工作，以持续地反映完成任务所需的时间。这个值可以在工作开始后增加。例如，在工作了4个小时后，估计需要8个小时，团队成员意识到他还需要16个小时才能完成。他将用20(8-4+16)更新剩余的工作量。当执行任务时，可能会发现需要更多的时间。总是用对剩余工作的最好估算来更新任务。这样，就能准确地反映出冲刺中剩余的工作总量。" %}

1. 当定义任务和评估工作时，将会看到每个团队成员的容量图表开始填充。容量条跟踪剩余的工作，对应每个团队成员以及整个团队的容量。

   还可以看到完成每个需求或bug所需的剩余工作。

   ![](images/94.png)

1. Click on the upper right corner where the sprint burndown is shown. Throughout your sprint, you can monitor the sprint burndown chart to determine if your team is on track to complete its sprint plan.单击右上角的冲刺燃尽图。在冲刺中，能够通过冲刺燃尽图，以确定团队是否正在按计划完成其冲刺目标。

   ![](images/36.png)

### 任务板

1. 一旦制定了冲刺计划，就要在冲刺期间执行这个计划。在每日站立会议中，团队可以从冲刺任务板查看积压工作项和任务的进展。

   ![](images/99.png)

   在Scrum每日站会中，可以过滤任务板关注感兴趣的条目。

   - 通过积压工作项分组或故事分组，来监控产品待办事项、故事、需求或bug的进度。

     ![](images/96.png)

   - 通过人员分组可以查看团队成员的工作进展。

     ![](images/97.png)

   - 使用Person过滤器，只关注分配给某个团队成员的工作。

1. 点击 **齿轮图标** 进入设置页面，选择 **Task** 标签页。

   ![](images/41.png)

   {% include important.html content= "丰富的卡片不仅提供了团队感兴趣的信息，而且还提供了一种无需打开工作条目就可以更新字段的方法。使用样式规则，可以根据设置的标准，使用特定的颜色突出显示对应的工作项。" %}

1. 还可以在卡片上看到头像和其他信息。

   ![](images/42.png)

1. 任务看板能够帮助我们快速地更新任务状态和剩余工作。简单地将任务拖到下一个列中，就可以反映它们的状态是正在进行或已完成。

   ![](images/43.png)

1. 最好是在Scrum每日站会之前，更新剩余的工作，帮助团队了解取得的进展。这样做还可以得到一个更平滑的燃尽图。

   每个团队成员可以评审他们所做的工作，并估算剩余的工作。如果发现完成任务花费的时间比预期的要长，那么应该增加任务的剩余工作量。剩余的工作应该总是准确地反映团队成员估计要多长时间才能完成任务。

   ![](images/98.png)

1. 在冲刺结束时，执行以下任务:

   - 所有任务的剩余工作清零
   - 更新所有已完成待办事项的状态
   - 将没有完成的任务或产品积压工作项移到下一个冲刺或回到产品待办列表

将没有完成的项目拖到产品待办列表或未来的冲刺中，更新所有未完成的子任务的迭代路径，对应产品待办列表的迭代路径或下一个冲刺的迭代路径。

## 练习 5: 组合管理

组合待办事项为产品经理提供了当前项目的敏捷团队工作的情况的展示。产品经理可以将高优先级的目标定义为Epics或特性，特性团队可以将它分解为开发团队需要开发的用户故事。

![](images/45.png)

{% include important.html content= "随着产品开发的推进，故事会可能会变得很大，很难处理。因此使用 **Feature** 工作项类型来对应。将产品积压工作项分组，在更大级别上处理相关信息。" %}

1. 点击 **Features**，将会看到已有的特性工作项列表。如果需要可以添加更多工作项。

   ![](images/44.png)

1. 如果已经创建了积压工作项，现在要整理，则可以通过对它们进行映射来简单地完成组织。回到 **Backlog items**。单击 **Mapping** 来显示关联关系。

   ![](images/46.png)

   ![](images/47.png)

1. 启用映射面板后，可以将当前没有父类设置的项拖放到它所属的特性中。另外，还可以将待办事项拖拽到不同的功能以改变它的父类。

   ![](images/48.png)

1. 要全面了解工作的主要项和展开，请单击 **Features**。通过在图标 **+** 上单击两次扩展所有级别，包括从功能到任务的完整结构。

   ![](images/49.png)

   {% include important.html content= "跟踪产品开发中涉及到的所有工作是很重要的，这样就可以计划并跟踪哪些工作已经完成，哪些需要完成。" %}

1. 回到 **Board** 上，当在看板上检查产品待办事项列表的状态时，也有一个看板来查看功能的当前状态。这个看板也像待办事项看板一样定制。

   ![](images/50.png)

1. 在特性看板上，点击第一张卡片的蓝色标记，会显示产品待办事项列表。可以勾选任何用户故事，将其标记为已完成。

   ![](images/51.png)

1. 还可以将任何特性拖放到其他状态，并检查怎样改变当前状态。

   ![](images/100.png)

## 练习 6: VSTS仪表盘的使用

仪表盘使团队能够看到项目的状态和监控项目的进展。简单来说，不必深入到团队项目站点的其他界面，就可以帮助我们做出判断。Overview页面提供了默认的团队仪表板，可以通过添加、删除或重新排列这些磁贴来定制该仪表板。

每个磁贴对应一个小部件，它提供了对一个或多个特性或功能的访问。

1. 进入默认的 **Dashboard** （Overview）页面。

   ![](images/52.png)

   {% include note.html content= "Overview页面提供了对默认的团队仪表板访问，可以通过添加、删除或重新排列这些磁贴来定制。每个磁贴对应一个小部件，它提供对一个或多个特性或功能的访问。" %}

1. 添加仪表板：从仪表板选项卡，单击加号图标，并输入一个仪表板名称。

   ![](images/53.png)

   选择仪表板后，可以向仪表板添加一个小部件。或者，可以从Work、Build或Test中心向团队仪表板添加图表。

   ![](images/54.png)

   完成后，单击 **Close** 按钮。然后单击选中标记，退出编辑模式。

1. 单击 **edit** 按钮修改仪表板，并添加如小部件，如Build Summary, Release Summary, Markdowns等小部件。

    ![](images/101.png)

1. 为Test仪表板添加 **Query Tile**

    ![](images/102.png)

1. 添加小部件后，可能需要配置它。例如，配置 **Query tile** 小部件，单击 **Configure** 小部件图标打开配置对话框。

    ![](images/103.png)

1. 然后选择查询并指定想要的规则。

    ![](images/104.png)

    {% include note.html content= "通过添加条件格式，让小部件可视化地提醒用户。" %}

    ![](images/105.png)

1. 除了小部件之外，还可以向仪表板添加图表。您可以从代码、工作和构建页面中向仪表板添加一个条目。首先，要确保添加的查询或图表能够从Queries页面的团队上下文中选择到。跳转到 **Work** 选项卡，点击左上方的 **Queries** 。

    ![](images/106.png)

1. 选择想要创建图表的查询，点击 **Charts** 菜单。

    ![](images/107.png)

1. 接下来，单击 **New chart** 选项打开图表配置。

    ![](images/108.png)

1. 此外还可以通过单击省略号并选择 **Add to dashboard** ，在上下文菜单中选择仪表板，为其在添加一个图表。

    ![](images/109.png)

    ![](images/110.png)

1. 可以通过单击 **Edit** 仪表板图标来修改仪表板，从仪表板中移动或删除一个小部件。可以拖动磁贴在仪表板上重新排序。要删除小部件，请单击小部件的 **Trash** （垃圾桶）图标或 **Delete** （删除）图标。当完成更改后，单击 **Exit edit-dashboard-mode** 图标以退出仪表板编辑状态。

    ![](images/111.png)

1. 可以重命名、重新排序或删除仪表板。此外还可以启用自动刷新，同时仪表板每5分钟会自动刷新一次。

    ![](images/55.png)

    ![](images/56.png)

## Exercise 7: Process Customization

在Team Services中，可以通过流程定制工作追踪体验。流程定义了工作项跟踪系统的构建部分，以及通过Team Services访问的其他子系统。无论何时创建团队项目，都要选择项目所需的构建部分的流程。

### 管理流程

Team Services支持两种流程类型。第一，核心系统流程——Scrum、Agile和CMMI系统流程——都是固定的。不能自定义这些流程。第二种类型，继承流程，从核心系统流程创建，可以自定义这些流程。

此外，所有流程都是共享的。也就是说一个或多个团队项目可以引用单个流程。也可以定制一个流程，而不是定制一个团队项目。对流程的更改会自动更新引用该流程的所有团队项目。

一旦创建了一个继承流程，就可以自定义它，基于它创建团队项目，并迁移现有的团队项目来引用它。在迁移到继承流程之前，Git团队项目不能被定制。

1. 请单击齿轮设置图标并选择 **Account settings** （帐户设置）打开管理页面。

   ![](images/57.png)

1. 点击 **Process** 。

   ![](images/58.png)

1. 可以从三个系统流程中的任意一个创建一个继承流程：Agile、Scrum或CMMI。在 **Process** 页面中，打开用于创建继承流程的菜单列表。这里，从Scrum系统流程中创建一个继承过程。然后单击 **Create inherited process**（创建继承过程）。

   ![](images/59.png)

1. 为过程模板输入一个名称，并可选输入描述。类似于 **MyHealthClinic Scrum template**。

   ![](images/61.png)

1. 在创建继承模板之后，将会看到成功的消息。

   ![](images/62.png)

### 在过程模板中定制字段

每个过程——Agile、Scrum或CMMI——都包含100个或更多的工作项字段。可以添加一个自定义字段来支持跟踪额外的数据需求，或修改继承字段的属性。

1. 选择已创建的继承模板。

   ![](images/63.png)

1. 导航到 **Work Item Types** （工作项类型）选项卡。现在有不同的选项来修改scrum模板。

   ![](images/64.png)

1. 选择 **Product Backlog item** \| **Layout** \| **New field** 。直接为PBI工作项模板添加一个新字段。在定义页面上提供了一个名为 **HealthClinicTicketId** 的名称。

   ![](images/65.png)

   {% include note.html content= "正在为MyHealthClinic内部的票务系统的内部id创建一个文本字段。" %}

1. 到目前为止，只创建了字段定义，我们必须将其添加到工作项的布局中。我们创建一个新组来显示自定义信息，因此所有的定制字段都会出现在这个组中。将该组命名为 **MyHealthClinic** ，并单击 **Add field** 。

   ![](images/66.png)

### 更改团队项目过程模板引用的流程

可以将团队项目引用的流程更改为继承流程或系统核心流程。但是，只能将团队项目更改为另一个流程，该流程是同一个核心系统流程的派生。也就是说，可以将一个基于Agile（敏捷）的团队项目变更为从敏捷系统流程创建的任何流程，以及Agile的核心流程。但是不能将基于Scrum的团队项目更改为Agile(敏捷)派生的继承流程。

1. 此时我们只创建了模板。必须将该模板分配给我们的VSTS项目，以便可以使用这个新字段。也可以使用它们的继承模板或默认模板，从VSTS项目中更改流程模板。这是在主流程界面上完成的。返回到 **Process** 选项卡，单击新模板上的省略号按钮，并选 **Change Team Projects** 来使用 **MyHealthClinic Scrum template**。

    ![](images/67.png)

1. 选择 **MyHealthClinic** 项目来更改流程并单击 **>** 按钮。

    ![](images/68.png)

1. 单击 **Ok** 按钮。在更改流程之后，会看到一条成功的消息。

    ![](images/69.png)

1. 让我们回顾一下新字段是如何出现在Product Backlog Item Template上的。返回到  **Work** \| **Backlogs**。打开第一个产品待办事项。为**MyHeathClinic** 组检查 **Acceptance Criteria** （验收标准）。填写 **Ticket ID** 信息，如 **HK89JY13**，点击 **Save & close**。

    ![](images/70.png)

   一旦工作项被保存，VSTS还将保存我们添加到PBI的新自定义信息，并将用于查询以及其他VSTS系统。
