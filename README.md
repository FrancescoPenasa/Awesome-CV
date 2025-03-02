`docker build -t test .`
`cd en`
`docker run --rm -v "$(pwd):/data" latex-compiler cv.tex`