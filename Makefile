.PHONY: validate lint check check-all wiki site-data graph stats topology focus worlds test provenance facts gm-notes queue web reader-dev reader-build review-check backend-check app-check clean

# Content targets run against one world unless their name says otherwise.
# Override with WORLD=<id>; `make worlds` lists what is available. The default
# comes from worlds.yml.
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

# Generate an optional GitHub wiki export into build/<world>/wiki. The deployed
# reader uses `site-data`; neither generated target is committed here.
wiki:
	@$(LC) wiki $(OUT)/wiki

# Build the versioned public reader data and the separate editorial bundle.
site-data:
	@ruby lorecraft/tools/build_site.rb build/site build/site-internal

# Branded multi-world reader. Install dependencies in apps/web before use.
reader-dev:
	@cd apps/web && pnpm run dev

reader-build:
	@cd apps/web && pnpm run build

backend-check:
	@cd backend && cargo fmt --all --check && cargo clippy --workspace --all-targets -- -D warnings && cargo test --workspace

review-check:
	@cd tools/review-app && npm test && npm run build

app-check: test check-all site-data review-check backend-check
	@cd apps/web && pnpm exec eslint . && pnpm exec tsc --noEmit && pnpm exec vitest run --coverage && pnpm run build
	@terraform fmt -check -recursive infrastructure/terraform

# Graph JSON projection, stats, topology.
graph:
	@$(LC) graph $(OUT)/graph.json
stats:
	@$(LC) stats
topology:
	@$(LC) topology
# Direct non-location focus choices for each canon-approved chronicle location.
focus:
	@$(LC) focus
# Who drafted the prose and who has read it, per block.
provenance:
	@$(LC) provenance
# Which expected kind facts are known, grouped by entity kind and entry.
facts:
	@$(LC) facts
# GM-note coverage, plus the repetition findings bulk writing produces.
gm-notes:
	@$(LC) gm-notes
# What the world needs next: declared questions + computed findings.
queue:
	@$(LC) queue
# Whether the graph holds together without its most prominent entities.
web:
	@$(LC) web

# Engine unit tests.
test:
	@ruby lorecraft/test/test_lorecraft.rb

clean:
	@rm -rf build
