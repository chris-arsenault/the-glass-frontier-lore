.PHONY: lint check wiki graph graph-check clean

# Run all checks (lore + wiki + graph)
lint:
	@python3 lint.py
	@python3 wiki_gen.py wiki_out
	@python3 graph_sync.py --check-only

# Alias
check: lint

# Sync lore to graph and run contradiction checks
graph:
	@python3 graph_sync.py

# Re-sync graph from scratch
graph-reset:
	@python3 graph_sync.py --clear

# Run graph contradiction checks only
graph-check:
	@python3 graph_sync.py --check-only

# Generate wiki pages locally (without linting)
wiki:
	@python3 wiki_gen.py wiki_out

# Remove generated files
clean:
	@rm -rf wiki_out
