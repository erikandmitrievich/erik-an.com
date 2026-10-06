# Builds erik-an-cv.pdf from cv.html through its print stylesheet.
# Run after editing cv.html; commit the PDF together with it.
CHROME ?= /Applications/Google Chrome.app/Contents/MacOS/Google Chrome

pdf: erik-an-cv.pdf

erik-an-cv.pdf: cv.html
	@"$(CHROME)" --headless --no-pdf-header-footer --virtual-time-budget=10000 \
		--print-to-pdf="$(CURDIR)/$@" "file://$(CURDIR)/cv.html" 2>/dev/null
	@echo "built $@"

.PHONY: pdf
