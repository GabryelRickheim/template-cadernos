\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bbe}[2020/04/20]
\LoadClassWithOptions{book}
% geometry
\RequirePackage{geometry}
\geometry{%
	left=2.5cm,%
	right=2.5cm,%
	top=4cm,%
	bottom=2.5cm,%
	bindingoffset=0cm
}
% math font
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{arev}
\RequirePackage[default]{opensans}
\RequirePackage[T1]{fontenc}
% color
\RequirePackage[dvipsnames]{xcolor}

%Cores para Eixo de Comunicação
\definecolor{corPrincipal}{HTML}{000000} % Cor Principal
\definecolor{corSecundaria}{HTML}{000000} % Cor Secundária
\definecolor{corAlternativa}{HTML}{000000} % Cor Alternativa
\definecolor{corFundo}{HTML}{000000} % Cor de Fundo

\RequirePackage[table]{xcolor}

\DeclareOption{black}{\colorlet{bbe}{black}}
\DeclareOption{comunicacao}{
    \definecolor{corPrincipal}{HTML}{E32728} % Cor Principal
    \definecolor{corSecundaria}{HTML}{A31A1C} % Cor Secundária
    \definecolor{corAlternativa}{HTML}{987E6D} % Cor Alternativa
    \definecolor{corFundo}{HTML}{E1E4E5} % Cor de Fundo
    \colorlet{bbe}{corSecundaria}
}
\DeclareOption{lideranca}{
    \definecolor{corPrincipal}{HTML}{E74857} % Cor Principal
    \definecolor{corSecundaria}{HTML}{E87B54} % Cor Secundária
    \definecolor{corAlternativa}{HTML}{B53845} % Cor Alternativa
    \definecolor{corFundo}{HTML}{E1E4E5} % Cor de Fundo
    \colorlet{bbe}{corSecundaria}
}
\DeclareOption{estrategiaPlanejamento}{
    \definecolor{corPrincipal}{HTML}{1FA161} % Cor Principal
    \definecolor{corSecundaria}{HTML}{EC6C5B} % Cor Secundária
    \definecolor{corAlternativa}{HTML}{AD5044} % Cor Alternativa
    \definecolor{corFundo}{HTML}{E1E4E5} % Cor de Fundo
    \colorlet{bbe}{corSecundaria}
}
\DeclareOption{gestaoInformacaoConhecimento}{
    \definecolor{corPrincipal}{HTML}{E84F82} % Cor Principal
    \definecolor{corSecundaria}{HTML}{CF4616} % Cor Secundária
    \definecolor{corAlternativa}{HTML}{69434F} % Cor Alternativa
    \definecolor{corFundo}{HTML}{E1E4E5} % Cor de Fundo
    \colorlet{bbe}{corSecundaria}
}
\DeclareOption{desenvolvimentoPessoal}{
    \definecolor{corPrincipal}{HTML}{DD9617} % Cor Principal
    \definecolor{corSecundaria}{HTML}{DD9E85} % Cor Secundária
    \definecolor{corAlternativa}{HTML}{383838} % Cor Alternativa
    \definecolor{corFundo}{HTML}{E1E4E5} % Cor de Fundo
    \colorlet{bbe}{corSecundaria}
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ExecuteOptions{black}
\ProcessOptions\relax
% floating object
\RequirePackage{float}
% graphic
\RequirePackage{graphicx}
% table
\RequirePackage{colortbl}
\arrayrulecolor{black}
% picture
\RequirePackage{tikz}
\usetikzlibrary{calc}
\usetikzlibrary{angles}
\usetikzlibrary{quotes}
\usetikzlibrary{arrows.meta}
\tikzset{%
	every picture/.style={%
		line width=1pt,%
		fill=black,%
		draw=black,%
		text=corPrincipal,%
	},%
	>={Stealth[length=6pt,inset=2pt]}%
}
%
% remove identation
\setlength{\parindent}{0pt}

\RequirePackage[many]{tcolorbox}

\newtcolorbox{note}{
	title={},
	colframe=white,
	colback=white,
	coltitle=bbe,
	fonttitle=\opensans,
	fontupper=\opensans\color{corAlternativa},
	boxrule=0pt,
	left=10pt,
	enhanced,
	right=0pt,
	top=0pt,
	bottom=0pt,
	borderline west={6pt}{0pt}{corPrincipal},
	boxed title style={colback=white},
}

\newtcolorbox{titlebox}[1]{
    title={#1~},                       
    colframe=bbe,                                     
    colback=white,                             
    boxed title style={colback=corSecundaria},                  
}

\newtcolorbox{quotebox}{
    title={},
    enhanced,
    colframe=corFundo,
    colback=corFundo,
    coltitle=corPrincipal,
    fonttitle=\bfseries,
    fontupper=\opensans\bfseries\color{corAlternativa},
    boxrule=0pt,
    boxed title style={colback=corFundo},
    overlay={
        \node[above,yshift=-20pt] at (frame.north west) {\includegraphics[height=24px]{icons/aspa2.png}};
        \node[below,yshift=20pt] at (frame.south east) {\includegraphics[height=24px]{icons/aspa1.png}};
    },
}

\newtcolorbox{lawbox}{
	title={},
    enhanced,
	colframe=corFundo,
	colback=corFundo,
	coltitle=corPrincipal,
	fonttitle=\bfseries,
	fontupper=\opensans\fontshape{it}\selectfont\color{corAlternativa},
	boxrule=0pt,
    top=9pt,
	boxed title style={colback=corFundo},
    overlay={
        \node[above, yshift=-11pt] at (frame.north) {\includegraphics[height=24px]{icons/bullet_legislacao.png}};
    },
}

\RequirePackage[definitionLists,hashEnumerators,smartEllipses,hybrid]{markdown}
% Add dot agter chapter number
\let \savenumberline \numberline
\def \numberline#1{\savenumberline{#1.}}


%\renewcommand*{\partname}{ផ្នែក}

% chapter start
% \RequirePackage{tikz}
\def\@makechapterhead#1{%
	{\if@twocolumn\vspace*{2.5ex}\else\relax\fi%
		\parindent\z@\raggedright%
		\ifnum\c@secnumdepth>\m@ne%
		%
		\begin{tikzpicture}[overlay,every node/.style={font=\opensans}]
        \node[right,minimum height=6ex,draw=corPrincipal,fill=corPrincipal,text=white,text width=\dimexpr\linewidth-9\pgflinewidth\relax](chapter)at(0,0){\opensans\fontseries{sb}\fontsize{18}{18}\selectfont \chaptername};
		\node[below right,minimum size=80pt,text=corPrincipal](chapternum)at(chapter.south west){\fontseries{b}\fontsize{80}{80}\selectfont\thechapter};
		\node[right,text=corPrincipal,text width=\dimexpr\linewidth-13ex](title)at(chapternum.east){\fontseries{m}\fontsize{28}{28}\selectfont#1};
		\end{tikzpicture}}%
	%
	\fi\@@par\nobreak\vskip18ex}

% sumário
\def\@makeschapterhead#1{%
	{\if@twocolumn\vspace*{2.5ex}\else\relax\fi%
		\parindent\z@\raggedright%
		\ifnum\c@secnumdepth>\m@ne%
		%
		\begin{tikzpicture}[overlay,every node/.style={}]
		\node[right,text=bbe,text width=\dimexpr\linewidth-2\pgflinewidth\relax](title)at(0,0){\opensans\fontseries{sb}\fontsize{42}{42}\selectfont#1};
		\end{tikzpicture}}%
	%
	\fi\@@par\nobreak\vskip5ex}

% section spacing
% remove chapter number from section
\renewcommand{\thesection}{\arabic{section}}
\long\def\section{%
	\@startsection{section}{1}{\z@}{%
		-1.5ex\@plus-.2ex\@minus-.2ex}{%
		1.5ex\@plus.2ex\@minus.2ex}{\opensans\fontseries{b}\fontsize{16}{16}\selectfont\color{corPrincipal}}}
\long\def\subsection{%
	\@startsection{subsection}{2}{\z@}{%
		-1.5ex\@plus-.2ex\@minus-.2ex}{%
		1.5ex\@plus.2ex\@minus.2ex}{\opensans\fontseries{sb}\fontsize{16}{16}\selectfont\color{corPrincipal}}}
\long\def\subsubsection{%
	\@startsection{subsubsection}{3}{\z@}{%
		-1.5ex\@plus-.2ex\@minus-.2ex}{%
		1.5ex\@plus.2ex\@minus.2ex}{\opensans\fontseries{sb}\fontsize{14}{14}\selectfont\color{corPrincipal}}}
\long\def\paragraph{%
	\@startsection{paragraph}{4}{\z@}{%
    -1.5ex\@plus-.2ex\@minus-.2ex}{%
    1.5ex\@plus.2ex\@minus.2ex}{\normalfont\bfseries}}
\long\def\subparagraph{%
	\@startsection{subparagraph}{4}{\parindent}{%
		1.5ex\@plus.2ex\@minus.2ex}{-1em}{\normalfont\bfseries}}

% section drawing
% \RequirePackage{tikz}
\def\@sect#1#2#3#4#5#6[#7]#8{%
	\ifnum #2>\c@secnumdepth
		\let\@svsec\@empty
	\else
		\refstepcounter{#1}%
		\protected@edef\@svsec{\@seccntformat{#1}\relax}%
	\fi
	\@tempskipa #5\relax
	\ifdim \@tempskipa>\z@
		\begingroup
		#6{%
			\vskip1ex\noindent%
			{\@svsec}
			{#8}
			\@@par\nobreak\vskip1ex}%
		\endgroup
		\csname #1mark\endcsname{#7}%
		\addcontentsline{toc}{#1}{%
			\ifnum #2>\c@secnumdepth \else
				\protect\numberline{\csname the#1\endcsname}%
			\fi
			#7}%
	\else
		\def\@svsechd{%
			#6{\hskip #3\relax
				\@svsec #8}%
			\csname #1mark\endcsname{#7}%
			\addcontentsline{toc}{#1}{%
				\ifnum #2>\c@secnumdepth \else
					\protect\numberline{\csname the#1\endcsname}%
				\fi
				#7}}%
	\fi
	\@xsect{#5}}


\RequirePackage{hyperref}
\hypersetup{%
	linktoc=all,%
	bookmarksnumbered,%
	bookmarksopen,
	colorlinks=true,       		
	linkcolor=bbe,          	
	citecolor=bbe,       		
	filecolor=bbe,      		
	urlcolor=bbe,}

% enumerate
\RequirePackage[inline]{enumitem}
\RequirePackage{multicol}
\RequirePackage{pifont}
% set enumerate and itemize key for number of columns
% \RequirePackage{multicol}
\SetEnumitemKey{2}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{2},after=\end{multicols}}
\SetEnumitemKey{3}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{3},after=\end{multicols}}
\SetEnumitemKey{4}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{4},after=\end{multicols}}
\SetEnumitemKey{5}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{5},after=\end{multicols}}
\SetEnumitemKey{6}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{6},after=\end{multicols}}
%
\setlist[enumerate]{%
    parsep=0pt,%
    topsep=1ex,%
    partopsep=0pt,%
    leftmargin=*,%
    itemsep=.5ex,%
    labelsep=0.5ex,%
    format=\color{bbe}\small\bfseries
}
% enumerate keys
\SetEnumitemKey{1}{label=\arabic*.}
\SetEnumitemKey{a}{label=\alph*.}
\SetEnumitemKey{A}{label=\Alph*.}
\SetEnumitemKey{i}{label=\roman*.}
\SetEnumitemKey{I}{label=\Roman*.}
% ball enumerate
\SetEnumitemKey{b1}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries,%
        ball color=black]{\arabic*};
    }%
}
%
\SetEnumitemKey{ba}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries,%
        ball color=black]{\alph*};
    }%
}
%
\SetEnumitemKey{bA}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries,%
        ball color=black]{\Alph*};
    }%
}
%
\SetEnumitemKey{bi}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries,%
        ball color=black]{\roman*};
    }%
}
%
\SetEnumitemKey{bI}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries,%
        ball color=black]{\Roman*};
    }%
}
%
% circled enumerate
\SetEnumitemKey{c1}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries,%
        fill=bbe]{\arabic*};
    }%
}
%
\SetEnumitemKey{ca}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries,%
        fill=bbe]{\alph*};
    }%
}
%
\SetEnumitemKey{cA}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries,%
        fill=bbe]{\Alph*};
    }%
}
%
\SetEnumitemKey{ci}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries,%
        fill=bbe]{\roman*};
    }%
}
%
\SetEnumitemKey{cI}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries,%
        fill=bbe]{\Roman*};
    }%
}
%
% squared enumerate
\SetEnumitemKey{s1}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        sharp corners,%
        minimum height=1.25em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries,%
        fill=bbe,%
        text width=2ex,%
        align=center]{\arabic*};
    },%
}
%
\SetEnumitemKey{sa}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        sharp corners,%
        minimum height=1.25em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries,%
        fill=bbe,%
        text width=2ex,%
        align=center]{\alph*};
    }%
}
%
\SetEnumitemKey{sA}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        rounded corners=1pt,%
        minimum height=1.25em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries,%
        fill=bbe%
        text width=2ex,%
        align=center]{\Alph*};
    }%
}
%
\SetEnumitemKey{si}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        rounded corners=1pt,%
        minimum height=1.25em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries,%
        fill=bbe%
        text width=2ex,%
        align=center]{\roman*};
    }%
}
%
\SetEnumitemKey{sI}{%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        rounded corners=1pt,%
        minimum height=1.25em,%
        inner sep=1pt,%
        text=white,%
        font=\upshape\small\bfseries,%
        fill=bbe%
        text width=2ex,%
        align=center]{\Roman*};
    }%
}
%
% itemize keys
\SetEnumitemKey{f1}{label=\protect\raisebox{-0.575ex}{\LARGE\textbullet}}
\SetEnumitemKey{f2}{label=\protect{\large\textendash}}
\SetEnumitemKey{f3}{label=\protect\raisebox{-0.2ex}{\large\textasteriskcentered}}
\SetEnumitemKey{f4}{label=\protect\raisebox{-0.8ex}{\huge\textperiodcentered}}
\SetEnumitemKey{b}{label=\protect\ensuremath{\bullet}}
\SetEnumitemKey{c}{label=\protect\ensuremath{\circ}}
\SetEnumitemKey{d}{label=\protect\ensuremath{\diamond}}
\SetEnumitemKey{t}{label=\protect\ensuremath{\triangleright}}
\SetEnumitemKey{p}{label=\protect\ding{43}}
\SetEnumitemKey{w}{label=\protect\ding{45}}
% styling enumerate
\setlist[enumerate,1]{1}
\setlist[enumerate,2]{a}
\setlist[enumerate,3]{i}
\setlist[enumerate,4]{A}
% styling itemize
\setlist[itemize]{%
	parsep=0pt,%
	topsep=1ex,%
	partopsep=0pt,%
	leftmargin=*,%
	itemsep=.5ex,%
	labelsep=.5ex,
    format=\color{bbe}}
\setlist[itemize,1]{f1}
\setlist[itemize,2]{f2}
\setlist[itemize,3]{f3}
\setlist[itemize,4]{f4}
% sub enumerate
\RequirePackage{tasks}
\settasks{%
	label=\alph*.,%
	label-format=\color{bbe}\bfseries,%
	label-offset=0.5ex,%
	label-align=right,%
	label-width=3ex,%
	item-indent=3.5ex,%
	column-sep=2ex,%
	before-skip=0ex,%
	after-skip=0ex,%
	after-item-skip=0.5ex%
}
\NewTasksEnvironment[%
	style=enumerate,%
	label=\alph*.,%
	label-format=\color{bbe}\bfseries,%
	label-offset=0.5ex,%
	label-align=right,%
	label-width=3ex,%
	item-indent=3.5ex,%
	column-sep=2ex,%
	before-skip=0ex,%
	after-skip=0ex,%
	after-item-skip=0.5ex]{Enumerate}[\item](2)
    \setlist[itemize]{%
        parsep=0pt,%
        topsep=1ex,%
        partopsep=0pt,%
        leftmargin=*,%
        itemsep=.5ex,%
        labelsep=.5ex,
        format=\color{bbe}}
\NewTasksEnvironment[%
	style=itemize,
	label=\ding{95},
	label-format=\color{bbe},%
	label-offset=1.45ex,%
	label-align=right,%
	label-width=1ex,%
	item-indent=2.45ex,%
	column-sep=2ex,%
    before-skip=0ex,%
    after-skip=0ex,%
	after-item-skip=0ex]{Itemize}[\item](2)
    %
    \NewTasksEnvironment[%
    style=enumerate,%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        ball color=black]{\alph*};
    },%
    label-format=\upshape\small\bfseries,%
    label-offset=0.5ex,%
    label-align=right,%
    label-width=3ex,%
    item-indent=3.5ex,%
    column-sep=2ex,%
    before-skip=0ex,%
    after-skip=0ex,%
    after-item-skip=0.5ex]{bEnumerate}[\item](2)
    %
    \NewTasksEnvironment[%
    style=enumerate,%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        circle,%
        minimum height=1.5em,%
        inner sep=1pt,%
        text=white,%
        fill=bbe]{\alph*};
    },%
    label-format=\upshape\small\bfseries,%
    label-offset=0.5ex,%
    label-align=right,%
    label-width=3ex,%
    item-indent=3.5ex,%
    column-sep=2ex,%
    before-skip=0ex,%
    after-skip=0ex,%
    after-item-skip=0.5ex]{cEnumerate}[\item](2)
    %
    \NewTasksEnvironment[%
    style=enumerate,%
    label={%
        \protect\tikz[baseline=-0.8ex]%
        \protect\node[%
        rounded corners=1pt,%
        minimum height=1.25em,%
        inner sep=1pt,%
        text=white,%
        fill=bbe]{\protect\parbox{1.5em}{\protect\centering\alph*}};
    },%
    label-format=\upshape\small\bfseries,%
    label-offset=0.5ex,%
    label-align=right,%
    label-width=3ex,%
    item-indent=3.5ex,%
    column-sep=2ex,%
    before-skip=0ex,%
    after-skip=0ex,%
    after-item-skip=0.5ex]{sEnumerate}[\item](2)
    %
% caption
\RequirePackage{caption}
\RequirePackage{subcaption}
\DeclareCaptionFont{bbe}{\color{black}}
\captionsetup{%
	font=small,%
	skip=0pt,%
	labelfont={bbe},%
	textfont={bbe},%
	labelsep=period}
\captionsetup[sub]{%
	font=small,%
	skip=0.5ex,%
	labelfont={bbe},%
	textfont={bbe},%
	labelsep=period}
\setlength{\intextsep}{0pt}
\allowdisplaybreaks
%% change label color %%
\thm@headfont{\color{corPrincipal}\bfseries\bfseries}
\def\th@remark{%
	\thm@headfont{\color{bbe}\bfseries\bfseries}%
	\normalfont % body font
	\thm@preskip\topsep \divide\thm@preskip\tw@
	\thm@postskip\thm@preskip
}

% footnote
\def\footnoterule{\kern -3pt\textcolor{bbe}{\hrule width \linewidth height 0.4pt}\kern 2.6pt}
\def\thefootnote{\color{bbe}\bfseries(\arabic{footnote})}

% prevent book contents from vertical stretching %%
\raggedbottom

% Textos de rodapé e cabeçalho
\def\preparelabel{\siglaorgao}
\def\preparename{\nomeorgao}
\let\ps@origin\ps@plain
\def\ps@plain{%
	\let\@oddhead\@empty%
	\let\@evenhead\@oddhead%
	\def\@oddfoot{%
        \textcolor{bbe}{\footnotesize\preparelabel~\preparename}%
        \hfill%
        \normalsize\bfseries\textcolor{bbe}{\thepage}%
    }
	\def\@evenfoot{%
        \textcolor{bbe}{\footnotesize\preparelabel~\preparename}%
        \hfill%
        \normalsize\bfseries\textcolor{bbe}{\thepage}%
    }
}
%
\def\ps@bbe{%
	\def\@oddhead{}%
	\def\@evenhead{}%
	\def\@oddfoot{%
		\textcolor{bbe}{\footnotesize\preparelabel~\preparename}%
        \hfill
		\normalsize\bfseries\textcolor{bbe}{\thepage}%
    }%
	\def\@evenfoot{%
        \textcolor{bbe}{\footnotesize\preparelabel~\preparename}%
        \hfill
        \normalsize\bfseries\textcolor{bbe}{\thepage}%
	}%
}
%
\pagestyle{bbe}
%
\def\arraystretch{1.25}
%
\def\baselinestretch{1.2}
\def\setminus{\ensuremath{{}-{}}}
%
\RequirePackage{cancel}
\def\CancelColor{\color{bbe}}
%

\endinput