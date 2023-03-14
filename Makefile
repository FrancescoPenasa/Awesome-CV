.PHONY: en it

CC = xelatex
EN_DIR = en
EN_RESUME_DIR = en/resume
EN_CV_DIR = en/cv
IT_DIR = it
IT_RESUME_DIR = it/resume
IT_CV_DIR = it/cv
EN_RESUME_SRCS = $(shell find $(EN_RESUME_DIR) -name '*.tex')
EN_CV_SRCS = $(shell find $(EN_CV_DIR) -name '*.tex')
IT_RESUME_SRCS = $(shell find $(IT_RESUME_DIR) -name '*.tex')
IT_CV_SRCS = $(shell find $(IT_CV_DIR) -name '*.tex')

en: $(foreach x, coverletter cv resume, $x.pdf)
it: $(foreach x, it_coverletter it_cv it_resume, $x.pdf)

resume.pdf: $(EN_DIR)/resume.tex $(EN_RESUME_SRCS)
	$(CC) -output-directory=$(EN_DIR) $<

cv.pdf: $(EN_DIR)/cv.tex $(EN_CV_SRCS)
	$(CC) -output-directory=$(EN_DIR) $<

coverletter.pdf: $(EN_DIR)/coverletter.tex
	$(CC) -output-directory=$(EN_DIR) $<

it_resume.pdf: $(IT_DIR)/resume.tex $(EN_RESUME_SRCS)
	$(CC) -output-directory=$(IT_DIR) $<

it_cv.pdf: $(IT_DIR)/cv.tex $(IT_CV_SRCS)
	$(CC) -output-directory=$(IT_DIR) $<

it_coverletter.pdf: $(IT_DIR)/coverletter.tex
	$(CC) -output-directory=$(IT_DIR) $<

clean:
	rm -rf $(EN_DIR)/*.pdf
	rm -rf $(IT_DIR)/*.pdf
