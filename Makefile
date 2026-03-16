.PHONY: lint check wiki graph-bootstrap clean

# Run all checks (lore + wiki)
lint:
	@python3 lint.py
	@python3 wiki_gen.py wiki_out

# Alias
check: lint

# Full graph rebuild (disaster recovery only)
graph-bootstrap:
	@python3 graph_bootstrap.py

# Generate wiki pages locally (without linting)
wiki:
	@python3 wiki_gen.py wiki_out

# Remove generated files
clean:
	@rm -rf wiki_out
