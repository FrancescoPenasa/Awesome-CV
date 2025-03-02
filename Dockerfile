FROM texlive/texlive:latest 

WORKDIR /data 

ENTRYPOINT ["xelatex", "-interaction=nonstopmode", "-file-line-error"]
CMD ["main.tex"]
# CMD ["latexmk", "-pdf", "-interaction=nonstopmode", "-file-line-error", "main.tex" ]