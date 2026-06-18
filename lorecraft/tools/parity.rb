#!/usr/bin/env ruby
# frozen_string_literal: true

# Round-trip parity: load the migrated world, re-render each entity to markdown,
# and compare (semantically) against the original file it was imported from.
# Proves the DSL captures the corpus faithfully. Run from the repo root.
Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8
$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "lorecraft"

world = Lorecraft.load("world/**/*.rb")
md = Lorecraft::Render::Markdown.new(world)

# Normalisation: parity is semantic, not byte-exact. We compare frontmatter as a
# key/value map (order-independent) and the body after whitespace + heading
# normalisation (the repo omits the `<!-- X -->` annotation when it equals the
# visible heading; the renderer always writes it — treat those as equal).
def split_doc(text)
  if text.start_with?("---\n")
    _, fm, body = text.split(/^---\n/, 3)
    [parse_fm(fm), body.to_s]
  else
    [{}, text]
  end
end

def parse_fm(block)
  fm = {}
  block.each_line do |line|
    next unless line =~ /\A([\w-]+):\s*(.*)\z/m

    k = Regexp.last_match(1)
    v = Regexp.last_match(2).strip
    fm[k] =
      if v =~ /\A\[(.*)\]\z/m
        Regexp.last_match(1).split(",").map { |s| s.strip.gsub(/\A['"]|['"]\z/, "") }.reject(&:empty?).sort
      else
        v.gsub(/\A['"]|['"]\z/, "")
      end
  end
  fm
end

require "pathname"

# Links are equal when they resolve to the same target file, regardless of how
# the relative path is spelled (the corpus has both minimal and redundant forms;
# the renderer always emits the minimal one).
def norm_links(text, from_path)
  text.gsub(/\[([^\]]*)\]\(([^)\s]+)\)/) do
    label = Regexp.last_match(1)
    href = Regexp.last_match(2)
    next Regexp.last_match(0) if href.start_with?("http", "#", "mailto")

    base, anchor = href.split("#", 2)
    rel = (Pathname.new(from_path).dirname + base).cleanpath.to_s
    "[#{label}](#{rel}#{anchor ? "##{anchor}" : ''})"
  end
end

def norm_body(body, from_path)
  lines = body.lines.map(&:rstrip)
  lines = lines.map do |l|
    # `## Heading <!-- Heading -->` ≡ `## Heading`
    if l =~ /\A(##\s+)(.+?)\s*<!--\s*(.+?)\s*-->\s*\z/ && Regexp.last_match(2).strip == Regexp.last_match(3).strip
      "#{Regexp.last_match(1)}#{Regexp.last_match(2).strip}"
    else
      l
    end
  end
  text = norm_links(lines.join("\n"), from_path)
  text.gsub(/\n{3,}/, "\n\n").strip
end

pass = 0
fails = []
world.entities.each_value do |e|
  next unless e[:path] # shells have no file
  next if e[:status].to_s == "shell"

  original = File.read(e[:path], encoding: "UTF-8")
  rendered = md.page_markdown(e)

  ofm, obody = split_doc(original)
  rfm, rbody = split_doc(rendered)

  problems = []
  # Frontmatter: every original key/value must survive (renderer may add `type`).
  ofm.each do |k, v|
    problems << "fm[#{k}]: #{v.inspect} → #{rfm[k].inspect}" unless rfm[k] == v
  end
  problems << "body differs" unless norm_body(obody, e[:path]) == norm_body(rbody, e[:path])

  if problems.empty?
    pass += 1
  else
    fails << [e.id, e[:path], problems, obody, rbody]
  end
end

puts "PARITY: #{pass} passed, #{fails.size} failed (of #{pass + fails.size} page entities)"
puts

fails.first((ARGV[0] || 6).to_i).each do |id, path, problems, obody, rbody|
  puts "==== #{id}  (#{path}) ===="
  problems.each { |p| puts "  ! #{p}" }
  if problems.include?("body differs")
    o = norm_body(obody, path).lines
    r = norm_body(rbody, path).lines
    (0...[o.size, r.size].max).each do |i|
      next if o[i] == r[i]

      puts "  L#{i + 1}"
      puts "    orig: #{o[i]&.chomp&.slice(0, 200).inspect}"
      puts "    new : #{r[i]&.chomp&.slice(0, 200).inspect}"
      break
    end
  end
  puts
end
