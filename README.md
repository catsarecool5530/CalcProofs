# CalcProofs

This is where I'll put my calc proofs from now on instead of just on discord :sob:

## LaTeX Setup

This repository is set up with a complete LaTeX environment for writing mathematical proofs. The main document is `main.tex` which includes all the necessary packages and theorem environments.

### Features

- **Mathematical packages**: `amsmath`, `amsfonts`, `amssymb`, `amsthm` for comprehensive math support
- **Theorem environments**: theorem, lemma, corollary, proposition, definition, example, remark, note
- **Custom commands**: Common number sets (ℝ, ℕ, ℤ, ℚ, ℂ) and derivative notation
- **Professional formatting**: Proper margins, spacing, and typography

### Compilation

To compile the LaTeX document:

```bash
# Using the Makefile (recommended)
make

# Or manually with pdflatex
pdflatex main.tex
pdflatex main.tex  # Run twice for proper references
```

### Makefile Commands

- `make` or `make all` - Compile the PDF
- `make clean` - Remove auxiliary files (.aux, .log, .toc, etc.)
- `make cleanall` - Remove all generated files including the PDF
- `make rebuild` - Clean and rebuild everything
- `make help` - Show available commands

### Adding Proofs

Add your calculus proofs in the "Additional Proofs" section of `main.tex`. Use the predefined theorem environments:

```latex
\begin{theorem}[Name of Theorem]
Statement of the theorem.
\end{theorem}

\begin{proof}
Your proof here.
\end{proof}
```

### Available Environments

- `theorem` - For main theorems
- `lemma` - For supporting lemmas
- `corollary` - For corollaries
- `proposition` - For propositions
- `definition` - For definitions
- `example` - For examples
- `remark` - For remarks
- `note` - For notes
