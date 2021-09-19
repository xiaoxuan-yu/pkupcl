# `pkupcl` 文档类

本文档类 fork 自 tansongchen/pkupcl ，用于北京大学物理化学实验课程的实验报告，以 GPLv3 协议发布。维护者在 tansongchen/pkupcl 的基础上修改了部分关于字体、数学、页眉页脚等的设置使其更为美观，并对链接、长表格、参考文献(使用 biblatex 宏包, biber 作为后端)等常用功能增加了支持。

本文档类需要用 `xelatex` 引擎编译。对于不含参考文献的文章，用 `xelatex` 编译两次即可。如果包含参考文献, 应当使用 xelatex -> biber -> xelatex -> xelatex工具链进行编译。

本文档类依赖于`思源宋体`(CJKmain)、`思源黑体`(CJKsans)、`方正新楷体`、`方正粗楷`、`Fandol 仿宋字体`(关于CJK字体的详细说明，参见 ctex-fontset-sourcesans.def 的注释部分), `Times New Roman`(main)、`Arial`(sans)、`Fira Code`(mono) 和 `XITS Math`(math) 字体，请在编译前安装。

使用方法详见 `example.tex`。

参考文献需要生成 bib 格式的文献库以供模板使用, 推荐使用 Zotero/Jabref/EndNote 等文献管理软件生成。

文档类提供了少量的快捷指令, 用于减少报告书写时的工作量。
```LaTeX
% 温度 电动势 浓度和气压的快速输入
\newcommand{\temp}[1]{\SI{#1}{\degreeCelsius}}
\newcommand{\elc}[1]{\SI{#1}{\volt}}
\newcommand{\cct}[1]{\SI{#1}{\mole \per \liter}}
\newcommand{\prs}[1]{\SI{#1}{\kilo \pascal}}

% 摄氏度、公式中文本、\varepsilon的快速输入
\newcommand{\C}{\si{\degreeCelsius}}
\newcommand{\tr}[1]{\textrm{#1}}
\newcommand{\ve}{\varepsilon}

% 微分算子
\newcommand\dif{\mathop{}\!\mathrm{d}}
```

维护者感谢以下开源项目：
- [tansongchen/pkupcl](https://github.com/tansongchen/pkupcl)
- [思源黑体](https://github.com/adobe-fonts/source-han-sans)
- [思源宋体](https://github.com/adobe-fonts/source-han-serif)
- [TeX-Live](https://github.com/TeX-Live/texlive-source)