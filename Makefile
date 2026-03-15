.PHONY: lint check wiki clean

# Run all checks (lore + wiki)
lint:
	@python3 lint.py
	@python3 wiki_gen.py wiki_out

# Alias
check: lint

# Generate wiki pages locally (without linting)
wiki:
	@python3 wiki_gen.py wiki_out

# Remove generated files
clean:
	@rm -rf wiki_out
