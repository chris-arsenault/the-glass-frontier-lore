.PHONY: lint check wiki clean

# Run all checks
lint:
	@python3 lint.py

# Alias
check: lint

# Generate wiki pages locally
wiki:
	@python3 wiki_gen.py wiki_out

# Remove generated files
clean:
	@rm -rf wiki_out
