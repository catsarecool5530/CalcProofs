# Makefile for LaTeX compilation

# Main document
MAIN = main

# LaTeX compiler
LATEX = pdflatex

# Default target
all: $(MAIN).pdf

# Compile the main document
$(MAIN).pdf: $(MAIN).tex
	$(LATEX) $(MAIN).tex
	$(LATEX) $(MAIN).tex  # Run twice for proper references

# Clean auxiliary files
clean:
	rm -f *.aux *.log *.toc *.out *.synctex.gz

# Clean everything including PDF
cleanall: clean
	rm -f $(MAIN).pdf

# Force rebuild
rebuild: cleanall all

# Help target
help:
	@echo "Available targets:"
	@echo "  all       - Build the PDF (default)"
	@echo "  clean     - Remove auxiliary files"
	@echo "  cleanall  - Remove all generated files including PDF"
	@echo "  rebuild   - Clean and rebuild everything"
	@echo "  help      - Show this help message"

.PHONY: all clean cleanall rebuild help