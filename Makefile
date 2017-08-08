
OUTPUT_DIR = build

SRC = main.tex
SRC_AUX = main.aux
PDF = main.pdf

debug: clean

	mkdir -p $(OUTPUT_DIR)
	pdflatex -shell-escape -output-directory $(OUTPUT_DIR) $(SRC)

release: clean

	mkdir -p $(OUTPUT_DIR)
	pdflatex -shell-escape -output-directory $(OUTPUT_DIR) $(SRC)
	bibtex $(OUTPUT_DIR)/$(SRC_AUX)
	pdflatex -shell-escape -output-directory $(OUTPUT_DIR) $(SRC)
	pdflatex -shell-escape -output-directory $(OUTPUT_DIR) $(SRC)

clean:

	rm -f $(OUTPUT_DIR)/*

distclean:

	rm -Rf $(OUTPUT_DIR)

run: debug

	okular $(OUTPUT_DIR)/$(PDF)

release_run: release run

