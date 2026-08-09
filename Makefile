.PHONY: validate lint check check-all wiki graph stats topology worlds test clean

# Every target runs against one world. Override with WORLD=<id>; `make worlds`
# lists what is available. The default comes from worlds.yml.
WORLD ?= glass-frontier
LC := ruby lorecraft/bin/lorecraft --world $(WORLD)
OUT := build/$(WORLD)

# Worlds declared in worlds.yml.
worlds:
	@ruby lorecraft/bin/lorecraft worlds

# Hard structural validation (raises on any invariant violation).
validate:
	@$(LC) validate

# Graded lore quality findings (errors / warnings / futures).
lint:
	@$(LC) lint

# Run both gates for one world.
check: validate lint

# Run both gates for every world that has canon (scaffolds are skipped).
check-all:
	@ruby lorecraft/tools/each_world.rb check

# Generate the GitHub wiki into build/<world>/wiki. CI publishes the wiki for
# worlds marked `publish: true`; it is never committed here.
wiki:
	@$(LC) wiki $(OUT)/wiki

# Graph JSON projection, stats, topology.
graph:
	@$(LC) graph $(OUT)/graph.json
stats:
	@$(LC) stats
topology:
	@$(LC) topology
# Who drafted the prose and who has read it, per block.
provenance:
	@$(LC) provenance

# Engine unit tests.
test:
	@ruby lorecraft/test/test_lorecraft.rb

clean:
	@rm -rf build
