# Define the list of slides (all .md files in the slides directory)
SLIDES := $(wildcard slides/*.md)

# Define the output directory for HTML slides
OUTPUT_DIR := static/slides

# Convert .md files to .html
HTML_SLIDES := $(patsubst slides/%.md, $(OUTPUT_DIR)/%.html, $(SLIDES))

# Define Marp command
MARP_CMD := marp --html --theme gaia

# Default target: Build all slides
all: $(HTML_SLIDES)

# Rule to convert .md to .html
$(OUTPUT_DIR)/%.html: slides/%.md
	@mkdir -p $(OUTPUT_DIR)
	$(MARP_CMD) $< --output $@

# Clean all generated files
clean:
	rm -rf $(OUTPUT_DIR)/*.html

