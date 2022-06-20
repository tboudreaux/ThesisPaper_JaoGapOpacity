LTC="pdflatex"
BTC="bibtex"
NAME="JaoGapOpacityUpdate"
TFLAGS="-jobname=$(NAME)"
SRC_DIR="src"
MAIN_SRC="ms.tex"

ASSET_FILES = $(shell find ./src/ -regex '.*\(tex\|pdf\)$')

default: all

all: pdf

pdf: ./src/$(ASSET_FILE)
	$(LTC) $(TFLAGS) $(SRC_DIR)/$(MAIN_SRC)
	$(BTC) $(NAME)
	$(LTC) $(TFLAGS) $(SRC_DIR)/$(MAIN_SRC)
	$(LTC) $(TFLAGS) $(SRC_DIR)/$(MAIN_SRC)
clean:
	-rm $(NAME).blg
	-rm $(NAME).bbl
	-rm $(NAME).aux
	-rm $(NAME).log
