# 哈　尔　滨　工　业　大　学 #
# PlutoThesis硕博士开题及学位论文模板 #

哈工大PlutoThesis项目现已加入哈工大研究生“学术桥”活动中，其官方QQ群为
学术桥-LaTeX交流群：38872389
学术桥-LaTeX交流群2：88984107

**【PlutoThesis Group 邮件列表向普通用户开放】
> https://groups.google.com/group/PlutoThesis  （注意用https，而非http，后者被GFW屏蔽）
  *** 目前任何使用模板的用户均可以在PlutoThesis Group的页面上提交申请，经过管理员批准，就可以加入Group，从而自动接收关于模板修改的最新消息，也能参与模板的讨论，或者是提交bugs。 （本页面上Issues下提交的Issues自动转发到Google group，所以在Issues上提交了bugs的用户，请勿重复在group上发帖。不过，在Google group上发的帖子，不会主动转到本Google code的页面上。）

使用之前请将TeX系统的宏包全部升级到最新版，因为新系统的中文处理方式有很大变革。

  * **若您在论文模板中发现与周围使用word的同学格式不同时，请不要以word模板为准，因为目前流行的word模板均与新论文规范存在较大偏差，先认真查阅新的论文规范，确认PlutoThesis格式是否正确无误。此外，论文模板与论文示例存在冲突处，目前差不多都是论文示例存在错误，所以请以论文规范明文规定为准。不能确定论文格式时，请联系研究生院学位办老师进行咨询。发现PlutoThesis存在格式问题时，请反馈给PlutoThesis模板维护小组，方便模板升级修正。**


**【友情提醒】**

  * **在您完成论文准备打印或者提交正式稿之前，请到本站来检查一下您所使用的版本是否是本模板的最新版本，以保证您的论文能够完全符合研究生院的论文格式要求。**

  * **在您遇到某些bugs时，反馈前请看这里的最新版本是否已经解决了您的bugs，以便更节省您的宝贵时间。祝您顺利！**


PlutoThesis项目旨在改进、维护哈尔滨工业大学（简称哈工大）学位论文LaTeX模板，为大家提供一个便利的论文模板，更加高效规范的完成自己的学位论文。从2004年模板诞生至今，已有不少同学使用此模板完成自己的学位论文，并且在使用过程中逐渐完善该模板，目前硕博士开题及学位论文模板已经完美实现学位论文写作所有的要求。

郑重声明：哈工大研究生院只是出台论文规范及论文提交要求，不发布官方学位论文模板。PlutoThesis 项目乃哈工大众热心 TeXer 技术支持和参与维护，尽力做到遵循学校的学位论文规范。如有冲突，以学位论文规范为准，维护小组不对造成的损失负责。欢迎反馈错误及意见到紫丁香TeX版，我们会尽快解决问题。


欢迎热心网友，尤其是Linux及其他平台下的用户，参与PlutoThesis硕博士学位论文模板的维护工作，加入维护小组。

### 本学位论文模板特色 ###

  * 由于LaTeX系统的跨平台性，可运行于Windows、Linux、Mac等操作系统；
  * 由于LaTeX系统本身的安全性，不会出现不稳定、中病毒及文件损坏的现象；
  * 由于LaTeX系统不同于MSWord的所想即所得的排版方式，可以更专注于论文内容；
  * 由于LaTeX模板的易用自动性，完全不用自己手动调整论文格式；
  * 格式已经完全定制，只需在源文件中填充自己的内容，完全不用考虑论文格式问题；
  * 论文封面、中英文目录、中英文图表目录、书签同时自动生成；
  * 公式、图形、表格、参考文献等自动编号、交叉引用方便；
  * 生成PDF格式论文，专业、漂亮；
  * 提供包括dvipdfmx，dvipspdf，pdflatex，xelatex多种生成pdf文件的方式，具有生成脚本；
  * 紫丁香TeX版提供使用及维护支持；
  * [FAQs](FAQs.md) -- 模板使用过程中的常见问题。


### 仓库内最新SVN版本的获取 ###

  * 查看

> 查看本页上面标题栏的 [更新](http://code.google.com/p/plutothesis/updates/list) 可以看到最近的所有更新动作及更新内容。


  * 安装Subversion + 命令行下载 (Command-Line Access)

> Use this command to anonymously check out the latest project source code:
    1. Non-members may check out a read-only working copy anonymously over HTTP.
> > svn checkout http://plutothesis.googlecode.com/svn/trunk/ plutothesis-read-only

  * SVN客户端获取（GUI 或 IDE Access）


> This project's Subversion repository may be accessed using many different client programs and plug-ins, for example TortoiseSVN for windows OS. See your client's documentation for more information.