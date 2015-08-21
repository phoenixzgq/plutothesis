# Pluto 模板使用 FAQs #
相应内容在学位论文模板压缩包的 readme.pdf 中也有，另外这里的内容可能不全，请认真阅读readme.pdf。

**Q1：三级标题后重起一段，怎样设置阿？**
A1：根据研究生院出的《论文规范》，三级标题后，是接着写而不是像二级标题那样重启一段。如果需要，可以在format.tex 中寻找如下代码：
\titleformat{\subsubsection} [runin](runin.md) {\hei\sf\xiaosi}{\thesubsubsection}{0.5em}{}[\;\;]
改为：\titleformat{\subsubsection} [hang](hang.md) {\hei\sf\xiaosi}{\thesubsubsection}{0.5em}{}

**Q2：图题和子图题之间距离怎么调整？感觉有点大**
A2：手动吧，\vspace**{-8pt} \FigureBiCaption**

**Q3：参考文献中标题的大小写有问题，明明写的大写，怎么转成小写了？**
A3：参考文献的标题的实词首字母自动大写，其他字母小写。对于一些特殊词，比如：{IEEEtran \LaTeX} 应该写成{IEEEtran} {\LaTeX}；\lambda 应该写成{$\lambda$}；BaTiO3 写为 {BaTiO3} 。

**Q4：子图标题用[或](.md) 符号时，总是出错呀**
A4：在用subfigure 时，如果子图标题含有[，需要用{ 和 } 包围，比如$\beta\in{[0,\,\pi](.md)}$

**Q5：请问表格中的顶端和低端的”粗线”怎么打？**
A5：原来用两\hline的地方，现在用\toprule，下面用\bottomrule，或者\specialrule{1pt}{0pt}{0pt}。

**Q6：怎么统计论文的字数？**
A6：一般可以用两种方法粗略估计字数。1. dos 下运行charcnt main.dvi，字数 =全角字符数+ 其他字符数/5；2. 将.pdf 另存为.rtf 文件，然后用MS Word 进行字数统计。写的过程中看页数也能估计个差不多:-)

**Q7：各章的图单独放在不同的子文件夹里?**
A7：main.tex文件中改成 \graphicspath{{figures/chp1/}{figures/chp2/}}。

**Q8：参考文献把bib 文件中的文献全部列出来了，即使有些文献没有引用的?**
A8：在main.tex中查找\nocite{**} ,并去掉。**

**Q9：表格的字号问题?**
A9：正文中表格内容默认是五号字，同时模板提供了两个切换命令\normalbiao \wuhaobiao，前者表示命令之后的表格没有字体限定，采用与正文相同的字号；后者强制命令之后的表格采用五号字。

**Q10：标点出现在行首?**
A10：这种情况一般出现在“英文~标点”，或者“数学~标点”，去掉中间的~就行了。书写示例：control，、$a=c$，。

**Q11：图表位置的问题?**
A11：图表在 LATEX 中属于浮动体， LATEX 本身会根据臭度，自行调整浮动体的位置，如果需要把图表在某个位置之前全部排出，可以使用\FloatBarrier 命令

**Q12：Pluto 模板升级的问题?**
A12：从 1.8rc2 这个版本开始，模板升级时只需把 setup目录，gb\_452.cpx, gb\_452.cap,chinesebst.bst Authorization.tex 文件替换掉，再对照修改一下 main.tex 即可（方便吧:-P）；当然最好是先把原来内容做一个备份 :-)

**Q13: 怎么编译模板？编译时需要注意哪些问题？**
A13: Windows 下直接运行 make.bat 就可以编译，linux下是 makefile 。如果你想采用自己的编译方式，则需要相应修改 main.tex 中的 \usewhat 参数。各个命令的参数及先后顺序参照make.bat或makefile；PDF书签出现乱码，很可能是因为没有运行gbk2uni程序。如果使用的是CTeX套装(www.ctex.org)，默认编译顺序：LaTeX -> bibtex -> LaTeX(已含gbk2uni) -> LaTeX ->dvipdf(dvipdfmx)。使用 LaTeX 编译时，图片必须为 eps 格式；使用 pdflatex 编译时，图片必须为 pdf 格式。

**Q14: 多个附录的问题？**
A14: 如果是 1.8.0.20071121（含） 之后的版本，示例如下：
\defaultfont\appendix
\BiAppChapter {附录一}{the first appendix}
。。。。。
\BiAppChapter {附录二}{the second appendix}
。。。。

**Q15：文献引用的问题？**
A15：\cite 是常规形式引用，\citeup或\ucite是上标形式引用;

**Q16: 关于证明结束符？**
A16：在proof环境下，证明结束以后会自动在最后一行的最右边添加证明结束符。但当证明以一个独立无编号公式结束时，证明结束符会出现在下一行的最右边，可以使用以下方法，使证明符出现在最后一行的最右边。\proof \begin{equation}a=c\tag**{$\square$}\end{equation}**

**Q17: 关于摘要、目录等部分的页码问题?**
A17：如果需要左右的小横线（和正文的页码一样），可以在 format.tex 查找 \if@mainmatter --~\fi，应该有四处，去掉 \if@mainmatter \fi 。


> ----- 待续 --------