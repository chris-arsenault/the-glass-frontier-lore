.PHONY: validate lint check wiki graph stats topology test clean

LC := ruby lorecraft/bin/lorecraft

# Hard structural validation (raises on any invariant violation).
validate:
	@$(LC) validate

# Graded lore quality findings (errors / warnings / futures).
lint:
	@$(LC) lint

# Run both gates.
check: validate lint

# Generate the GitHub wiki into wiki_out/ (the only markdown output; CI
# publishes it to the wiki repo, it is never committed here).
wiki:
	@$(LC) wiki wiki_out

# Graph JSON projection, stats, topology.
graph:
	@$(LC) graph build/graph.json
stats:
	@$(LC) stats
topology:
	@$(LC) topology

# Engine unit tests.
test:
	@ruby lorecraft/test/test_lorecraft.rb

clean:
	@rm -rf wiki_out build
