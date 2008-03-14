type main.tex | find "\def\useyap{true}" && goto yaptrue
latex main.tex
bibtex main
latex main.tex
gbk2uni main.out
latex main.tex
dvipdfm -p a4 main.dvi
del main_dvipdfm.pdf
ren main.pdf main_dvipdfm.pdf
del main.log
del *.aux *.bbl *.blg *.out *.thm *.toc *.bak *.lof *.fen *.toe
exit

:yaptrue
latex main.tex
bibtex main
latex main.tex
gbk2uni main.out
latex main.tex
dvips -Ppdf -G0 -ta4 main.dvi
del main_dvipspdf.pdf
ps2pdf main.ps main_dvipspdf.pdf
del main.log
del *.aux *.bbl *.blg *.out *.thm *.toc *.bak *.lof *.fen *.toe

:-sPAPERSIZE=a4