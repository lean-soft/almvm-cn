---
title: 在Visual Studio团队服务中使用Git版本控制
layout: page
sidebar: vsts
permalink: /labs/vsts/git/
folder: /labs/vsts/git/
---

Last updated : {{ "now" | date: "%b %d, %Y" }}.

## 概述

团队服务支持两种类型的版本控制:Git和Team Foundation 版本控制（TFVC）。以下是两个版本控制系统的简要概述：

 -**Team Foundation Version Control (TFVC)**: TFVC 是一种集中式的版本控制系统. 通常，在团队成员的开发机器上，每个文件只有一个版本，历史数据仅在服务器上维护。分支是基于路径的，并在服务器上创建。

 -**Git**: Git 是一种分布式的版本控制系统. Git 仓库在可以在本地工作 (比如在开发人员的机器上). 每个开发人员在其开发机器上都有一个源代码库的副本。开发人员可以在开发机器上提交文件变更集，并执行版本控制操作，如历史记录和比较，而无需网络连接.

在新创建的项目中，默认采用Git版本控制。我们通常建议采用Git版本控制，除非对于集中式的版本控制有特殊的需要，那可以采用TFVC版本控制系统.

在本实验中，您将学习如何建立本地Git库，该存储库可以很轻松的同步到Visual Studio 团队服务的Git存储库中。另外，您将学会Git分支和合并等操作。

## 练习 1: 克隆现有的Git存储库

1. 登陆到 **Visual Studio 团队** 帐户，导航到 **MyhealthClinic** 项目.

    ![](images/78.png)

1. 导航到**Code**，选择**Clone** ，在克隆窗口中选择 **Clone in Visual Studio**

    ![](images/clonecode.png)

1. 点击 **Yes**

    ![](images/9.png)

1. 系统会提示需要从Visual Studio登录到团队服务帐户，登录到您的帐户

1. 点击 **Clone this repository**

    ![](images/3.png)

1. 设置存储库的存放路径，然后选择 **Clone**，会将远程存储库克隆到本地

    ![](images/clonewindowvs.png)

1.在 *Solutions* 下，选择 **Show Folder View**，查看本地Git存储库中的解决方案文件

    ![](images/showfolderview.png)

1. 双击 **MHC_ASPNetCore.sln**，打开解决方案。

## 练习 2: 使用提交（commits）来保存工作

当你对文件进行修改时，Git会将修改记录保存在本地存储库。您可以通过暂存更改来选择要提交的更改。提交通常是针对您的本地Git存储库进行的，因此不必担心编写未完成会与他人分享，可以继续之前的工作，并提交到本地，直到工作已经完成，可以与他人分享时，再推送这些变更到服务器。

什么是一次提交（commit）?

Git 提交（commits） 由以下内容组成-

- 这次提交的文件变化， Git在提交中保存了所有变更文件的内容，这样使Git能更快速、智能的进行合并

- 对父提交的引用， Git通过这些引用来管理代码变化的历史记录

- 对此次提交的注释

### 任务 1: 提交更改

1. 打开 Visual Studio.

1. 转到 **Team Explorer** 主面.

   ![](images/11.jpg)

1.打开 **01_Demos_ASPNET5** 解决方案.

   ![](images/12.jpg)

1. 展开 **MyHealthAPI项目**. 转到 **controller** 文件夹，修改其中一个文件的代码.
   当你修改代码时，Visual Studio会自动跟踪变更。

   ![](images/13.png)

1. 在 **Team Explorer** 中打开 **Changes** . 输入本次提交的注释，并选择 **Commit All** 来创建一次提交.

   ![](images/14.png)

   ![](images/15.png)

1. 当其他团队成员在存储库中更新了代码，需要同步其他人的变更到本地存储库。
   在 team explorer 中打开同步视图

   ![](images/16.png)

### 任务 2: 同步变更

1. 在同步之前, 先通过获取（fetch）变更来查看其他人提交的变更。 获取（Fetching）变更不会合并到你的工作目录中，使用拉取（Pull）时才会将变更合并到本地工作目录中。

   ![](images/17.png)

   ![](images/18.png)

1. 使用推送（push）将本地提交的变更同步到服务器.

   ![](images/19.png)

   ![](images/20.png)

1. 回到你的VSTS项目，点击 **Code** \| **History** 来查看提交

   ![](images/21.png)

### 任务 3: 暂存（Stage）

可以使用暂存更改来选择需要提交的文件来避免其他修改过的文件被提交. 也就是说可以忽略临时文件、日志文件或者其他文件，这些文件可能会被修改但又不想提交到存储库中。

1. 切换到 **Visual Studio**.

1. 展开项目 **MyHealth.API** . 转到 **Controllers** 文件夹，修改其中的一个或多个任意文件.
   
1. 在 team explorer中，转到 **Changes** 视图. 可以看到有两个文件被编辑了. 选中一个文件来创建一个提交，在Tteam explorer中，通过 暂存（Stage）将这个文件加入到Git的Stage区域
   这会在本地仓库中创建一个**.gitignore** 文件，如果这个忽略文件在这之前已提交，忽略此文件不会从本地存储库中移除。

   ![](images/22.png)

   ![](images/23.png)

1. 点击 **Commit Staged and Sync** 来更新远程存储库.

   ![](images/24.png)

## 练习 3: 查看历史记录

Git的每个提交都会保存上级引用，通过这个引用信息来管理开发过程中的历史记录。通过查找提交的历史记信息，来查找和比较本地当前版本的差异.

Git的 **Branches and Merges** 功能通过拉取请求（pull requests）来实现, 这意味着开发过程中的提交不需要按照线性方式（按照时间或先后顺序）来完成。当您使用历史记录比较文件的版本时，请考虑两次提交之间的文件更改，而不是两个时间点之间的文件更改。主分支中文件的最近更改可能来自两周前在功能分支中的提交，只是在昨天才合并。

### 任务 1: 比较文件

1. 打开Visual Studio.

1. 打开 Team Explorer主页.

   ![](images/25.png)

1. 展开 **MyHealth.API**项目. 转到 **controllers** 文件夹，修改其中的一个或多个任意文件.
  历史记录窗口会显示 提交的 ID, 作者, 日期, 和本地存储库所有变更的注释说明

   ![](images/26.png)

1. 在历史记录窗口中右击并选择一个最近的提交，选择 **Compare with previous**.

   ![](images/27.png)

### 任务 2: 获取历史版本中的文件

1. 右键单击您之前修改的控制器文件，然后选择 **View History**. 您可以过滤提交来查找需要恢复的文件版本.

1. 右键单击包含要还原的文件版本的提交，然后选择 **View commit details**.

   ![](images/28.png)

1. 您将在团队资源管理器中看到该文件。右键单击该文件并在团队资源管理器中的提交详细信息中选择打开以还原.

   ![](images/29.png)

## 练习 4:在Visual Studio中管理Git分支

在Web上的分支视图中管理Team Services Git仓库中的工作文件.
自定义视图以跟踪您最关心的分支，这样您就可以保持团队所做的更改。

### 介绍

对分支提交更改不会影响其他分支，您可以与他人共享分支，而无需将更改合并到主项目中。创建新的分支以隔离主分支和其他工作的功能更改或错误修复。由于分支是轻量级的，所以在分支之间切换是快速和容易的。在使用分支时，Git不会创建源文件的多个副本，它会使用存储库中的历史信息来创建分支。
您的Git工作流应该创建并使用分支来管理功能和错误修正。Git工作流程的其余部分，如共享代码和审查代码与拉请求使用分支来实现。因为Git很容易切换分支，使得通过分支来隔离工作非常容易实现。

### 任务 1: 在本地存储库中创建分支

1. 在 Visual Studio 中打开**Team Explorer** ，转到 **Branches** 视图.

   ![](images/30.png)

1. 右击主分支 (通常是基于 master 来创建子分支)， 选择 **New Local Branch From**.

   ![](images/31.png)

1. 输入分支名称并点击 **create branch**.

   ![](images/32.png)

### 任务 2: 获取分支和发布分支

Git会跟踪您正在使用哪个分支，并确保在您获取分支时，您的文件与分支上​​最近的提交相匹配。
分支允许您同时在同一本地Git存储库中使用多个版本的源代码

1. 打开**Team Explorer** ,转到 **Branches#** 视图. 定准到想检出的分支, 右击分支名然后点击 **checkout**.

   ![](images/33.png)

1. 你可以确认已获取的分支，通常在Visual Studio窗口底部会显示当前分支，如图所示。

   ![](images/34.png)

1. 定位到需要发布的分支.

   ![](images/35.png)

1. 右键分支名并点击 **Publish branch**.

   ![](images/36.png)

1. 返回到 VSTS 帐户，查看 **Code** \| **Branches**, 可以看到发布成功的分支.

   ![](images/37.png)

1. 也可以在Visual Studio分支下面的 **remotes origin** 节点查看远程分支

   ![](images/38.png)

### 任务 3: 删除本地分支和远程分支

{% include note.html content= "Deleting a branch in your local repo doesn't remove the branch on the remote." %}

1. 打开**Team Explorer** ，转到 **Branches#** 视图. 定位到想删除的分支中.
   确保你没有签出到该分支（当前工作分支），不可以删除牌当前工作中的分支.

   ![](images/39.png)

1. 选择 **delete**. 删除后，应该可以看到提示信息.

   ![](images/40.png)

1. 删除远程分支. 先要定位到远程分支中，在 Team Explorer的分支视图中的节点：remotes/origin
   右击 想要删除的分支，然后点击 **Delete Branch From Remote**.

   ![](images/41.png)

1. 删除后，应该可以看到提示信息.

   ![](images/42.png)

1. 返回 VSTS项目中， 点击 **Code** \| **Branches** 确认分支已被删除

   ![](images/43.png)

## 练习 5: 在团队门户网站中管理分支

### 任务 1: 创建新分支

1. 登陆到 Visual Studio 团队服务网站.

1. 转到 **Code** \| **Branches** ,点击 **New Branch** 创建分支.

   ![](images/44.png)

1. 在创建分支对话框中，输入新分支的名称，选择一个上级分支,根据需要确认是否要关联工作项,点击 **create**.

   ![](images/45.png)

1. 创建后，可以看到创建好的分支.

   ![](images/46.png)

1. 返回到Visual Studio查看创建的分支。需要 **fetch** 分支信息，才能在本地存储库中切换到新的分支。

1. 打开Team Explorer ，转到 同步视图点击 **fetch**.

   ![](images/47.png)

   ![](images/48.png)

1. 转到 **Branches#** 视图 来查看远程分支是否可用.

   ![](images/49.png)

1. 定位到想要获取到本地存储库的远程分支，右键单击分支名称并选择**New Local Branch From**.

   ![](images/50.png)

1. 为本地分支输入一个分支名称，点击 **create**.

   ![](images/51.png)

1. 可以看到获取并创建好的本地分支

     ![](images/52.png)

### 任务 2: 删除一个分支

1. 在Web页面中定位分支.

   ![](images/46.png)

1. 点击 分支右边的 **trashcan** 图标按钮

   ![](images/53.png)

1.一旦删除，可以看到下图的状态，如果意外删除分支，您可以通过点击 **undo** 来恢复

   ![](images/54.png)

### 任务 3: 锁定分支

锁定用于防止新的更改造成冲突，或将分支置为只读状态。如果只想确保分支中的更改在合并之前进行审阅，请使用分支策略和拉取请求，而不是锁定整个分支。

锁定不会阻止Clone Git存储库，也不会阻止将分支中的更新获取到本地repo中。与您的团队分享锁定分支的原因，并确保您的团队知道在解锁后如何处理分支。

1. 在Web页面中定位分支，选择您想要锁定的分支

1. 点击分支中的 **...** 图标，在弹出出来的菜单中选择 **Lock** 

   ![](images/55.png)

1. 分支被锁定后，会看到有一个像锁一样的标识符

   ![](images/56.png)

1. 在菜单中点击 **Unlock** 解锁分支.

## 练习 6: 拉取请求（Pull requests）

在将代码合并到主分支之前，拉取请求可让您的团队对功能分支中的更改提供反馈。审阅者可以逐步完成建议的更改，发表评论，并投票批准或拒绝代码 。

### 任务 1: 在 Visual Studio 的 Team Explorer 创建拉取请求  

1. 打开**Team Explorer** ， 转到 **Branches#** 视图. 签出 **dev** 分支. 如果没有则创建一个分支

1. 打开 **01_Demos_ASPNET5** 解决方案.

1. 展开 **MyHealth.API**项目. 转到 **Controllers** 文件夹修改任意文件，并推送到服务器，并确保同步了其他人的提交

   ![](images/57.png)

1. 现在所有改动已经同步到本地

1. 转到 the Team Explorer 主页.

1. 点击 **Pull requests** 

   ![](images/58.png)

1. 点击 **New Pull Request** ,会打开一个新Web网页，在Web网页中完成创建

   ![](images/59.png)

1. 您可以链接工作项，描述分支中的更改，以便其他人更轻松地查看您尝试解决的问题。您还可以添加审阅者。

   ![](images/60.png)

1. 点击 **New Pull Request** 执行创建. 在概念页面中，可以进行审批，添加注释等等

   ![](images/61.png)

### 任务 2: 管理拉取（Pull requests

在 Code 中心下面的tab页面：Pull Request 中来管理自己创建的或者是分配拉取请求 

1. 打开 Pull Request view, 点击 **Active** ,查看当前存储库中活动的拉取请求.

   也可以查看完成的、取消的、或是关闭的拉取请求

   ![](images/62.png)

1. 进入拉取请求的总览页面，整个页面一目了然地显示了拉取请求的当前状态

   ![](images/63.png)

1. 查看标题，描述和讨论，以便了解代码审阅建议，或是查看其他审阅者提出的问题。

1. 在 **Files** 选项卡中，查看拉取请求的源分支和目标分支之间的文件差异

   ![](images/64.png)

1. 查看从**All changes**下拉列表中推送到拉取请求的源分支的以前版本的代码。

    当有新的变更提交到Dev分支时，下拉列表和更新列表会自动进行更新

   ![](images/65.png)

1. 找到想添加注释的文件

   ![](images/66.png)

1. 在下图中，可以为拉取请求添加评论以提出建议，回复以前的评论，并指出提出的更改存在的问题.

   ![](images/67.png)

1. 我们可以更改为树视图以获取源代码的正确结构或仅列出文件。我们还可以查看所有评论/活跃评论/隐藏评论

   ![](images/68.png)

1. 通过查看 update 选项卡中的提交记录，可以知道是哪些人提交了代码

   ![](images/69.png)

1. 可以通过 **Commits** 选项卡页面，查看此分支所有提交的注释

    ![](images/70.png)

1. 返回到 **Files** 选项卡. 点击  **comments** ，查看修改后的文件和评论者的评论信息

    > 新的评论状态为Active活动状态，可以通过点击下拉框来更新评论状态:

    - **Active:** 评论处于审查中.
    - **Resolved:** 评论提到的问题已经解决.
    - **Pending:** 评论中的问题将会被处理，但还没解决.
    - **Won't Fix:** 注意评论中的建议，但不会修复
    - **Closed:** 此评论的讨论已关闭.

    ![](images/71.png)

1. 在拉取请求视图中点击 **Approve** 

    > 默认为批准，也可以从下拉列表中选择其他选项:

      - **Approve with suggestions :** 同意拉取请求，但提供可选的建议以改进代码.
      - **Waiting for the author :** 要批准更改，并要求作者审阅评论。作者应该让你知道什么时候你应该在解决问题后重新审查代码.
      - **Rejected :** 更改不可接受。如果您以这种方式进行投票，您应该在拉取请求中留下评论，详细说明更改被拒绝的原因.

    ![](images/72.png)

1. 点击拉取请求视图右上角的 **Complete** 

    ![](images/73.png)

1. 输入用于合并提交的消息，并在随后的对话框中根据需要更新拉取请求描述.
    您可以选择压缩合并您的拉取请求，并在合并完成后删除源分支.

    {% include note.html content= "**Squash merging** 是一个配置项，它允许您在完成拉取请求时压缩分支的Git历史记录，而不是将分支上的每个提交添加到主分支的历史记录中，压缩合并会将所有文件更改合并成一个提交到主分支中。压缩合并可让主分支历史保持整洁，易于查看和理解." %}

    ![](images/74.png)

1. 点击**Complete Merge**，应该会看到一个合并成功的消息.

    ![](images/75.png)

1. 返回 **Pull Requests** ，可以在 **completed** 选项卡中看到完成的拉取请求.

    ![](images/76.png)

1. 打开文件视图并选择 **master** 分支 \| **History** 以确保已成功合并。

    ![](images/77.png)

1. Master主分支已经合并成功.

## 练习 7: 管理Git存储库

在团队项目中创建Git仓库以管理项目的源代码。每个Git仓库都有自己的权限和分支，使得不同项目的代码工作相互隔离开来

### 任务 1: 在VSTS项目中创建一个仓库

1. 登陆到 **Visual Studio Team Services** 

1. 在您的帐户概览页面中，选择您的团队项目。要找到您的团队项目，您也可以搜索.

   ![](images/78.png)

1. 转到**Code**选项卡，选择Git存储库连接的下拉框.

   ![](images/79.png)

1. 点击 **New Repository** 创建Git存储库. 在新窗口中，确保选择的是Git存储库类型，并为新的Git存储库输入一个名称.

   ![](images/80.png)

1. 点击 **Create**. 会在当前团队项目中创建一个新的空存储库. 可以使用自己喜欢的IDE来克隆Git仓库,也可以使用命令行工具来克隆Git仓库

   ![](images/81.png)

1. 在**Team Explorer**中打开连接视图。Visual Studio将显示团队服务项目中的所有现有Git存储库，以便您可以选择任何想要克隆的项目

   ![](images/82.png)

   ![](images/83.png)

### 任务 2: 在团队项目中删除Git存储库

从团队项目中删除未使用的存储库以组织项目的源代码

1. 点击 **gear icon** ，导航到 **Version Control**.

   ![](images/84.png)

1. 选择想要删除的存储库，点击旁边的 **...** ,在弹出一菜单中点击 **delete repository**.

   ![](images/85.png)

1. 点击 **Delete.** 以确认删除存储库

   ![](images/86.png)

### 任务 3: 在团队项目中更改Git存储库的名称

1. 选择 **gear icon** ,导航到 **Version Control**.

   ![](images/84.png)

1. 选择想更新的的存储库，点击旁边的 **...** ,在弹出来的菜单中点击 **rename repository**.

   ![](images/87.png)

1. 点击 **Rename.** 确认修改

   ![](images/87.png)
