.PHONY: lint check

# Run all checks
lint:
	@python3 lint.py

# Alias
check: lint
