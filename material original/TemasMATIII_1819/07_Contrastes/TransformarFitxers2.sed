s/\\medskip//g 
s/\\bigskip//g  
s/\\begin{frame}//g 
s/\\end{frame}//g
s/\\begin{itemize}//g 
s/\\end{itemize}//g 
s/\\end{document}//g
s/\\item\[([0-9])\]/\*/g
s/\\item/\*/g
s/\\frametitle{\(.*\)}/## \1/g 
s/\\only<[1-9]>//g
s/{\([0-9]\)}/\1/g
s/\[([0-9])\]//g
s/\[fragile\]//g
s/\\pause//g
s/\\blue{\([^{]*\)}/\1/g
s/\\red{\([^{]*\)}/\1/g
s/\\emph{\([^{]*\)}/\*\1\*/g
s/\\textsl{\([^{]*\)}/\*\1\*/g
s/``/"/g
s/''/"/g
s/\\vspace\*{.*}//g
s/\\vspace{.*}//g
s/\\subsection{.*}//g
s/\\section{.*}//g
s/  +/ /g
