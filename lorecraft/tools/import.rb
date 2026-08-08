#!/usr/bin/env ruby
# frozen_string_literal: true

# One-shot migration: turn the existing markdown corpus + the graph snapshot
# into Lorecraft world files. Markdown supplies entities and prose; the snapshot
# supplies the typed relationship edges (which live only in the graph). Run from
# the repo root:
#
#   ruby lorecraft/tools/import.rb [SNAPSHOT.json] [OUT_DIR]
#
# Defaults: the Glass Frontier's pre-DSL snapshot → its world directory. Kept
# for the record; the markdown corpus it read no longer exists.
require "json"
require "pathname"
require "fileutils"

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

ROOT = Pathname.new(Dir.pwd)
WORLD_DIR = "worlds/glass-frontier"
SNAPSHOT = ARGV[0] || "#{WORLD_DIR}/work-tracking/snapshots/pre-dsl-migration.json"
OUT = Pathname.new(ARGV[1] || "#{WORLD_DIR}/world")

# Structural / engine edge types that are NOT world relationships — they encode
# prose mentions, section ownership, and taxonomy wiring, all of which Lorecraft
# represents differently (refs, prose blocks, schema).
STRUCTURAL = %w[
  MENTIONS HAS_SECTION ALLOWS_HEADING HAS_ARCHETYPE FILLS_BEAT
  AT_STAGE HAS_BEAT HAS_STAGE
].freeze

# Kinds that are DM/structural and excluded from the player wiki render.
NONWIKI_KINDS = %i[dm theme thread loop].freeze

SPECIAL_FILES = %w[index.md tags.md timeline.md design-principles.md
                   world-seeds.md causality.md].freeze

def slug_to_id(slug) = slug.tr("-", "_").to_sym

# A Ruby symbol literal for a tag name, preserving hyphens (the repo's tag
# vocabulary uses them: kinetic-freq, social-structure, ...). Entity ids are
# underscored for clean refs, but tags are kept verbatim.
def tag_lit(name)
  name =~ /\A[a-zA-Z_][a-zA-Z0-9_]*\z/ ? ":#{name}" : ":#{name.inspect}"
end

# --- minimal frontmatter parser (matches wiki_gen semantics) --------------
def parse_frontmatter(text)
  return [{}, text] unless text.start_with?("---\n")

  _, fm_block, body = text.split(/^---\n/, 3)
  fm = {}
  fm_block.to_s.each_line do |line|
    next unless line =~ /\A([\w-]+):\s*(.*)\z/m

    key = Regexp.last_match(1)
    val = Regexp.last_match(2).strip
    fm[key] =
      if val =~ /\A\[(.*)\]\z/m
        Regexp.last_match(1).split(",").map { |s| s.strip.gsub(/\A['"]|['"]\z/, "") }.reject(&:empty?)
      else
        val.gsub(/\A['"]|['"]\z/, "")
      end
  end
  [fm, body.to_s]
end

# --- load the snapshot ----------------------------------------------------
snap = JSON.parse(File.read(SNAPSHOT))
node_by_nid = {}
snap["nodes"].each { |n| node_by_nid[n["nid"]] = n }

entity_nodes = snap["nodes"].select { |n| n["labels"].include?("Entity") }
graph_id_by_path = {}
graph_node_by_id = {}
entity_nodes.each do |n|
  gid = n["props"]["id"]
  graph_node_by_id[gid] = n
  fp = n["props"]["file_path"]
  graph_id_by_path[fp] = gid unless fp.nil? || fp.empty?
end

# Taxonomy → schema inputs
relation_types = snap["nodes"].select { |n| n["labels"].include?("RelationType") }
                              .map { |n| n["props"] }
# Tags are a controlled vocabulary; player/tags.md is the human-maintained
# authority (the graph taxonomy can lag). Parse the `| `tag` |` table rows.
tag_names = File.read("player/tags.md")
                .scan(/^\|\s*`([\w-]+)`\s*\|/).flatten.uniq.sort
section_names = snap["nodes"].select { |n| n["labels"].include?("SectionHeading") }
                             .map { |n| n["props"]["name"] }.compact

# --- scan markdown content files -----------------------------------------
content_paths = []
%w[player dm].each do |base|
  Dir.glob("#{base}/**/*.md").sort.each do |p|
    next if SPECIAL_FILES.include?(File.basename(p))

    fm, = parse_frontmatter(File.read(p))
    next if fm["type"].nil? || fm["type"].empty? # not an entity page

    content_paths << p
  end
end

# id resolution: prefer the graph id bound to this path, else the filename stem.
path_to_id = {}
id_to_path = {}
content_paths.each do |p|
  gid = graph_id_by_path[p] || File.basename(p, ".md")
  eid = slug_to_id(gid)
  path_to_id[p] = eid
  id_to_path[eid] = p
end
# Map every graph id (hyphen) to an entity id (underscore) for edge endpoints.
graphid_to_eid = {}
graph_node_by_id.each_key { |gid| graphid_to_eid[gid] = slug_to_id(gid) }

# --- helpers to emit Ruby -------------------------------------------------
def repo_rel(href, src_path)
  base = href.split("#", 2).first
  (Pathname.new(src_path).dirname + base).cleanpath.to_s
end

# Turn a chunk of markdown prose into an interpolated-heredoc body: internal
# links become #{ref ...}, [future:X] becomes #{future "X"}, everything else is
# preserved verbatim. The global pre-scan proved the corpus has no #{ or
# backslash sequences, so interpolation is always safe.
def proseify(text, src_path, path_to_id)
  pattern = /\[future:([^\]]+)\]|\[([^\]]*)\]\(([^)\s]+)\)/
  text.gsub(pattern) do
    m = Regexp.last_match
    if m[1]
      %(\#{future #{m[1].strip.inspect}})
    else
      label = m[2]
      href = m[3]
      if href.start_with?("http", "#", "mailto")
        m[0] # leave external/anchor-only links as literal markdown
      else
        base, anchor = href.split("#", 2)
        rel = repo_rel(base, src_path)
        eid = path_to_id[rel]
        anchor_arg = anchor ? ", anchor: #{anchor.inspect}" : ""
        if eid
          lbl = label.nil? || label.empty? ? "" : ", #{label.inspect}"
          %(\#{ref :#{eid}#{lbl}#{anchor_arg}})
        else
          # internal link to a non-entity page (index, meta) — keep the path
          lbl = label.nil? || label.empty? ? "nil" : label.inspect
          %(\#{ref nil, #{lbl}, path: #{rel.inspect}#{anchor_arg}})
        end
      end
    end
  end
end

# Emit a `prose` call. Heredoc method-args (section:/heading:) must sit on the
# OPENER line; the terminator stays bare on its own line.
def emit_prose(f, body, args = nil)
  indented = body.split("\n", -1).map { |l| l.empty? ? "" : "    #{l}" }.join("\n")
  f.puts "  prose <<~PROSE#{args ? ", #{args}" : ''}"
  f.puts indented
  f.puts "  PROSE"
end

# Split a markdown body into the lead (main) prose and ## sections.
# Returns [main_text, [{heading:, canonical:, text:}, ...]].
def split_sections(body)
  # drop the leading H1 title line
  lines = body.lines
  lines.shift while lines.first && lines.first.strip.empty?
  lines.shift if lines.first&.start_with?("# ")

  main = +""
  sections = []
  current = nil
  lines.each do |line|
    if line =~ /\A##\s+(.+?)\s*(?:<!--\s*(.+?)\s*-->)?\s*\z/ && !line.start_with?("###")
      heading = Regexp.last_match(1).strip
      canonical = (Regexp.last_match(2) || heading).strip
      current = { heading: heading, canonical: canonical, text: +"" }
      sections << current
    elsif current
      current[:text] << line
    else
      main << line
    end
  end
  [main.strip, sections.each { |s| s[:text] = s[:text].strip }]
end

def section_sym(canonical) = canonical.downcase.gsub(/[^a-z0-9]+/, "_").gsub(/\A_|_\z/, "").to_sym

# Collected as entity files are written, then folded into the schema below.
used_sections = []

FileUtils.mkdir_p(OUT)

# --- write timeline.rb ----------------------------------------------------
File.open(OUT + "timeline.rb", "w") do |f|
  f.puts "# Timeline — CE years are absolute ticks (matches edge valid_from/valid_to)."
  f.puts "timeline do"
  f.puts "  era :the_ring_age,        starts: 2000, length: 140   # ..2140"
  f.puts "  era :the_glassfall,       length: 165                 # 2140..2305"
  f.puts "  era :the_rekindling,      length: 35                  # 2305..2340"
  f.puts "  era :the_contested_reach, length: 38                  # 2340..2378"
  f.puts "  era :the_silent_bloom,    length: 29                  # 2378..2407"
  f.puts "  era :the_bitter_reach,    length: 16                  # 2407..2423"
  f.puts "  era :the_accord,          length: 27                  # 2423..2450"
  f.puts "  now tick: 2435"
  f.puts "end"
end

# --- write entity files ---------------------------------------------------
TAG_KEY = "tags"
written = 0
content_paths.each do |p|
  fm, body = parse_frontmatter(File.read(p))
  eid = path_to_id[p]
  kind = fm["type"]
  rel_out = p.sub(%r{\Aplayer/}, "").sub(%r{\Adm/}, "dm/")
  out_file = OUT + rel_out.sub(/\.md\z/, ".rb").tr("-", "_")
  FileUtils.mkdir_p(out_file.dirname)

  main, sections = split_sections(body)

  File.open(out_file, "w") do |f|
    f.puts "#{kind} :#{eid} do"
    f.puts "  name #{(fm['title'] || eid.to_s).inspect}"
    f.puts "  path #{p.inspect}"
    if (tags = fm[TAG_KEY]) && !Array(tags).empty?
      f.puts "  tags #{Array(tags).map { |t| tag_lit(t) }.join(', ')}"
    end
    f.puts "  prominence :#{fm['prominence']}" if fm["prominence"]
    %w[status region narrative_role species culture era date].each do |k|
      f.puts "  #{k} #{fm[k].inspect}" if fm[k] && !fm[k].to_s.empty?
    end
    f.puts "  registry true" if fm["registry"] == "true"
    if (al = fm["alias"]) && !Array(al).empty?
      f.puts "  aka #{Array(al).map(&:inspect).join(', ')}"
    end
    if fm["dm"] == "true"
      pe = fm["public_entry"]
      f.puts "  dm!#{pe ? " public_entry: :#{slug_to_id(pe)}" : ''}"
    end
    # Any remaining frontmatter key → a generic static attribute (preserves
    # fields like prominence_xrefs / contains_dm without special-casing each).
    handled = %w[title type tags prominence status region narrative_role
                 species culture era date registry alias dm public_entry]
    fm.each do |k, v|
      next if handled.include?(k)

      if %w[true false].include?(v)
        f.puts "  #{k} #{v}"
      else
        f.puts "  #{k} #{v.inspect}" # String → "x"; Array → ["a", "b"]
      end
    end
    f.puts

    emit_prose(f, proseify(main, p, path_to_id)) unless main.empty?
    sections.each do |sec|
      sym = section_sym(sec[:canonical])
      used_sections << sym
      args = "section: :#{sym}, heading: #{sec[:heading].inspect}"
      emit_prose(f, proseify(sec[:text], p, path_to_id), args)
    end
    f.puts "end"
  end
  written += 1
end

# --- write schema.rb (after collecting kinds + sections actually used) ----
kinds = (content_paths.map { |p| parse_frontmatter(File.read(p)).first["type"] } +
         entity_nodes.map { |n| n["props"]["type"] }).compact.uniq.map(&:to_sym).sort
sections = (section_names.map { |s| section_sym(s) } + used_sections).uniq.sort

File.open(OUT + "schema.rb", "w") do |f|
  f.puts "# Schema — generated by tools/import.rb (taxonomy from snapshot; tags from tags.md)."
  f.puts "schema do"
  wiki, nonwiki = kinds.partition { |k| !NONWIKI_KINDS.include?(k) }
  f.puts "  entity_type #{wiki.map { |k| ":#{k}" }.join(', ')}"
  f.puts "  entity_type #{nonwiki.map { |k| ":#{k}" }.join(', ')}, wiki: false" unless nonwiki.empty?
  f.puts
  f.puts "  effect :set ; effect :clear ; effect :create ; effect :destroy ; effect :transfer"
  f.puts
  relation_types.sort_by { |r| r["name"] }.each do |r|
    f.puts "  relation :#{r['name'].downcase}, category: :#{r['category'] || 'general'}, " \
           "temporal: #{!!r['temporal']}"
  end
  f.puts
  tag_names.each { |t| f.puts "  tag #{tag_lit(t)}" }
  f.puts
  sections.each { |s| f.puts "  section_heading :#{s}" }
  f.puts "end"
end

# --- write shell stubs for graph entities with no markdown file -----------
shell_ids = graph_node_by_id.keys.reject { |gid| id_to_path.key?(slug_to_id(gid)) }
File.open(OUT + "_shells.rb", "w") do |f|
  f.puts "# Shell entities — known to the graph/index but not yet written as pages."
  f.puts "# status :shell suppresses file rendering; they exist only as edge endpoints + index rows."
  shell_ids.sort.each do |gid|
    n = graph_node_by_id[gid]["props"]
    eid = slug_to_id(gid)
    kind = (n["type"] && !n["type"].empty?) ? n["type"] : "concept"
    f.puts "#{kind} :#{eid} do"
    f.puts "  name #{(n['title'] || gid).inspect}"
    f.puts "  status :shell"
    f.puts "  prominence :#{n['prominence']}" if n["prominence"] && !n["prominence"].empty?
    f.puts "  dm!" if n["dm_only"]
    f.puts "end"
  end
end

# --- write edges ----------------------------------------------------------
known_eid = ->(eid) { id_to_path.key?(eid) || shell_ids.map { |g| slug_to_id(g) }.include?(eid) }
edge_count = 0
skipped = 0
File.open(OUT + "_edges.rb", "w") do |f|
  f.puts "# Relationship edges — generated from the graph snapshot."
  f.puts "# Each becomes a named, addressable relation instance (promotable later)."
  seen = {}
  snap["relationships"].each do |r|
    next if STRUCTURAL.include?(r["rel_type"])

    src = node_by_nid[r["src_nid"]]
    tgt = node_by_nid[r["tgt_nid"]]
    next unless src && tgt && src["labels"].include?("Entity") && tgt["labels"].include?("Entity")

    seid = slug_to_id(src["props"]["id"])
    teid = slug_to_id(tgt["props"]["id"])
    unless known_eid.call(seid) && known_eid.call(teid)
      skipped += 1
      next
    end

    verb = r["rel_type"].downcase
    props = r["props"] || {}
    base = "rel_#{seid}_#{verb}_#{teid}".gsub(/[^a-z0-9_]/, "_")
    id = base
    n = 1
    id = "#{base}_#{n += 1}" while seen[id]
    seen[id] = true

    parts = [":#{id}", ":#{verb}", ":#{seid}", ":#{teid}"]
    parts << "since: { tick: #{props['valid_from']} }" if props["valid_from"]
    parts << "till: { tick: #{props['valid_to']} }" if props["valid_to"]
    parts << "dm: true" if props["dm_only"]
    f.puts "relate #{parts.join(', ')}"
    edge_count += 1
  end
end

puts "imported #{written} entities, #{shell_ids.size} shells, #{edge_count} edges " \
     "(#{skipped} edges skipped — endpoint not an entity)"
