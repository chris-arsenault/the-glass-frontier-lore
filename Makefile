.PHONY: lint check wiki graph-check graph-stats clean

# Run all checks (lore + wiki + graph)
lint:
	@python3 lint.py
	@python3 wiki_gen.py wiki_out

# Alias
check: lint

# Graph contradiction checks
graph-check:
	@python3 graph_cli.py check

# Graph statistics
graph-stats:
	@python3 graph_cli.py stats

# Generate wiki pages locally (without linting)
wiki:
	@python3 wiki_gen.py wiki_out

# Remove generated files
clean:
	@rm -rf wiki_out
