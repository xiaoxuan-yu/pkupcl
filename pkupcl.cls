% This template is forked from tansongchen/pkupcl, modified and maintained by Youmans Yu <xiaoxuan_yu@pku.edu.cn>.

\ProvidesClass{pkupcl}
\LoadClass[zihao=-4, fontset=none, UTF8]{ctexart}
% Math font setting
\RequirePackage{unicode-math}
\RequirePackage{amsmath}
\RequirePackage{mathrsfs, bm}
\setmathfont{XITS Math}
% 加粗图注、表注的序号
\ctexset{
	figurename=\textbf{图},
	tablename=\textbf{表},
	fontset=sourcesans
}

% 宏包
\RequirePackage[hmargin=3cm,vmargin=4cm]{geometry}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{titlesec}
\RequirePackage[version=4]{mhchem}
\RequirePackage{enumitem}
\RequirePackage{float}
\RequirePackage[backend=biber, style=chem-acs]{biblatex}
\renewcommand*{\bibfont}{\small}
\RequirePackage{longtable}
\RequirePackage{tabularx}
\newcolumntype{Y}{>{\centering\arraybackslash}X}
\RequirePackage[toc,page]{appendix}
\RequirePackage{subcaption}
\RequirePackage{color, xcolor}
\RequirePackage{hyperref}
\RequirePackage{threeparttable}
\RequirePackage{siunitx}
%\RequirePackage{physics}

% 使用siunitx包报告不确定度时，以下设置可以使结果以\bar(X) \pm \sigma 的形式表示
% 使用siunitx包书写单位时，以下设置可以使单位之间加\cdot点
\sisetup{
	detect-family,
	separate-uncertainty = true,
	inter-unit-product = \ensuremath{{}\cdot{}}
	}
\RequirePackage{caption}
\captionsetup{labelfont=sf,textfont=bf,labelsep=period}
\setlength{\abovecaptionskip}{2pt}
\setlength{\belowcaptionskip}{2pt}

% 页眉页脚
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\lhead{\sffamily \footnotesize 物理化学实验}
\chead{\sffamily \footnotesize \@title}
\rhead{\sffamily \footnotesize \thepage}
\lfoot{}
\cfoot{}
\rfoot{}

% 字体
\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Fira Code}

% 各级标题样式
\renewcommand{\thesection}{\arabic{section}}
\titleformat{\section}[block]{\bfseries\sffamily}{\textsf{\thesection}}{1em}{}[]
\renewcommand{\thesubsection}{\arabic{section}.\arabic{subsection}}
\titleformat{\subsection}[block]{\bfseries}{\textsf{\thesubsection}}{1em}{}[]
\renewcommand{\thesubsubsection}{\arabic{section}.\arabic{subsection}.\alph{subsubsection}}
\titleformat{\subsubsection}[block]{\ttfamily}{\textsf{\thesubsubsection}}{1em}{}[]

% 文档元信息
\newcommand{\id}[1]{\def\@id{#1}}
\newcommand{\group}[1]{\def\@group{#1}}
\newcommand{\temperature}[1]{\def\@temperature{#1}}
\newcommand{\pressure}[1]{\def\@pressure{#1}}
\renewcommand{\abstract}[1]{\def\@abstract{#1}}
\newcommand{\keyword}[1]{\def\@keyword{#1}}

% 制作封面
\newcommand{\makecover}{
	\begin{figure}[!ht]
	\centering
	\includegraphics[width=0.7\linewidth]{logo}
	\end{figure}

	\begin{center}
		\sffamily
		\zihao{-0} 物理化学实验报告
	\end{center}

	\vspace*{1cm}

	\begin{table}[!ht]
	\sffamily
	\centering
	\begin{Large}
	\begin{tabular}{p{4cm} p{8cm}<{\centering}}
		题目： & \@title \\ \cline{2-2}
	\end{tabular}
	\end{Large}
	\end{table}
	
	\vspace*{0.5cm}
	
	\begin{table}[!ht]
	\sffamily
	\centering
	\begin{large}
	\begin{tabular}{p{3cm} p{7cm}<{\centering}}
		姓\qquad 名： & \@author \\ \cline{2-2}
		学\qquad 号： & \@id \\ \cline{2-2}
		组\qquad 别： & \@group \\ \cline{2-2}
		日\qquad 期： & \@date \\ \cline{2-2}
		室\qquad 温： & \SI{\@temperature}{^\circ C} \\ \cline{2-2}
		气\qquad 压： & \SI{\@pressure}{kPa} \\ \cline{2-2}
	\end{tabular}
	\end{large}
	\end{table}
	
	\rule{\textwidth}{0.3pt}

	\paragraph*{\sffamily 摘要} \@abstract
	\paragraph*{\sffamily 关键词} \@keyword

	\newpage
}

% 温度 电动势 浓度和气压的快速输入
\newcommand{\temp}[1]{\SI{#1}{\degreeCelsius}}
\newcommand{\elc}[1]{\SI{#1}{\volt}}
\newcommand{\cct}[1]{\SI{#1}{\mole \per \liter}}
\newcommand{\prs}[1]{\SI{#1}{\kilo \pascal}}
% 摄氏度、公式中文本、\varepsilon的快速输入
\newcommand{\C}{\si{\degreeCelsius}}
\newcommand{\tr}[1]{\textrm{#1}}
\newcommand{\ve}{\varepsilon}
% 微分算子定义
\newcommand\dif{\mathop{}\!\mathrm{d}}
\newcommand{\ddv}[2]{\frac{\dif #1}{\dif #2}}
\newcommand{\pdv}[3]{\left(\frac{\partial #1}{\partial #2}\right)_{#3}}


