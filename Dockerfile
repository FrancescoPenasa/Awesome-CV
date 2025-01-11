FROM texlive/texlive:latest 

WORKDIR /data 

CMD ["xelatex", "-interaction=nonstopmode", "-file-line-error", "main.tex" ]
# CMD ["latexmk", "-pdf", "-interaction=nonstopmode", "-file-line-error", "main.tex" ]

