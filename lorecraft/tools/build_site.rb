#!/usr/bin/env ruby
# frozen_string_literal: true

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)

require "fileutils"
require "json"
require "open3"
require "pathname"
require "zlib"
require "lorecraft"

SOCIAL_FONT = {
  "A" => %w[01110 10001 10001 11111 10001 10001 10001],
  "B" => %w[11110 10001 10001 11110 10001 10001 11110],
  "C" => %w[01111 10000 10000 10000 10000 10000 01111],
  "D" => %w[11110 10001 10001 10001 10001 10001 11110],
  "E" => %w[11111 10000 10000 11110 10000 10000 11111],
  "F" => %w[11111 10000 10000 11110 10000 10000 10000],
  "G" => %w[01111 10000 10000 10111 10001 10001 01111],
  "H" => %w[10001 10001 10001 11111 10001 10001 10001],
  "I" => %w[11111 00100 00100 00100 00100 00100 11111],
  "J" => %w[00111 00010 00010 00010 10010 10010 01100],
  "K" => %w[10001 10010 10100 11000 10100 10010 10001],
  "L" => %w[10000 10000 10000 10000 10000 10000 11111],
  "M" => %w[10001 11011 10101 10101 10001 10001 10001],
  "N" => %w[10001 11001 11001 10101 10011 10011 10001],
  "O" => %w[01110 10001 10001 10001 10001 10001 01110],
  "P" => %w[11110 10001 10001 11110 10000 10000 10000],
  "Q" => %w[01110 10001 10001 10001 10101 10010 01101],
  "R" => %w[11110 10001 10001 11110 10100 10010 10001],
  "S" => %w[01111 10000 10000 01110 00001 00001 11110],
  "T" => %w[11111 00100 00100 00100 00100 00100 00100],
  "U" => %w[10001 10001 10001 10001 10001 10001 01110],
  "V" => %w[10001 10001 10001 10001 10001 01010 00100],
  "W" => %w[10001 10001 10001 10101 10101 10101 01010],
  "X" => %w[10001 10001 01010 00100 01010 10001 10001],
  "Y" => %w[10001 10001 01010 00100 00100 00100 00100],
  "Z" => %w[11111 00001 00010 00100 01000 10000 11111],
}.freeze

def social_pixel(pixels, width, height, x, y, color)
  return if x.negative? || y.negative? || x >= width || y >= height

  offset = ((y * width) + x) * 4
  color.each_with_index { |channel, index| pixels.setbyte(offset + index, channel) }
end

def social_disk(pixels, width, height, cx, cy, radius, color)
  (cy - radius..cy + radius).each do |y|
    (cx - radius..cx + radius).each do |x|
      social_pixel(pixels, width, height, x, y, color) if ((x - cx)**2) + ((y - cy)**2) <= radius**2
    end
  end
end

def social_line(pixels, width, height, from, to, thickness, color)
  x0, y0 = from
  x1, y1 = to
  steps = [(x1 - x0).abs, (y1 - y0).abs].max
  (0..steps).each do |step|
    fraction = steps.zero? ? 0 : step.to_f / steps
    social_disk(
      pixels, width, height,
      (x0 + ((x1 - x0) * fraction)).round,
      (y0 + ((y1 - y0) * fraction)).round,
      thickness, color,
    )
  end
end

def social_curve(pixels, width, height, points, thickness, color)
  previous = points.first
  1.upto(80) do |step|
    t = step / 80.0
    inverse = 1 - t
    current = [0, 1].map do |axis|
      ((inverse**3 * points[0][axis]) +
        (3 * inverse**2 * t * points[1][axis]) +
        (3 * inverse * t**2 * points[2][axis]) +
        (t**3 * points[3][axis])).round
    end
    social_line(pixels, width, height, previous, current, thickness, color)
    previous = current
  end
end

def social_circle(pixels, width, height, cx, cy, radius, thickness, color)
  steps = [radius * 12, 120].max
  previous = [cx + radius, cy]
  1.upto(steps) do |step|
    angle = step * 2 * Math::PI / steps
    current = [cx + (radius * Math.cos(angle)).round, cy + (radius * Math.sin(angle)).round]
    social_line(pixels, width, height, previous, current, thickness, color)
    previous = current
  end
end

def social_text(pixels, width, height, text, x, y, scale, color)
  cursor = x
  text.each_char do |character|
    if character == " "
      cursor += scale * 4
      next
    end
    SOCIAL_FONT.fetch(character).each_with_index do |row, row_index|
      row.each_char.with_index do |bit, column_index|
        next unless bit == "1"

        (0...scale).each do |dy|
          (0...scale).each do |dx|
            social_pixel(
              pixels, width, height,
              cursor + (column_index * scale) + dx,
              y + (row_index * scale) + dy,
              color,
            )
          end
        end
      end
    end
    cursor += scale * 6
  end
end

def png_chunk(name, data)
  [data.bytesize].pack("N") + name + data + [Zlib.crc32(name + data)].pack("N")
end

def png_data(width, height, pixels)
  raw = String.new(capacity: (width * 4 + 1) * height, encoding: Encoding::BINARY)
  height.times do |y|
    raw << "\0" << pixels.byteslice(y * width * 4, width * 4)
  end
  png = "\x89PNG\r\n\x1a\n".b
  png << png_chunk("IHDR", [width, height, 8, 6, 0, 0, 0].pack("NNCCCCC"))
  png << png_chunk("IDAT", Zlib::Deflate.deflate(raw, Zlib::BEST_COMPRESSION))
  png << png_chunk("IEND", "")
end

def brand_icon_png(size)
  background = [17, 27, 32, 255]
  copper = [225, 143, 80, 255]
  pale = [248, 246, 238, 255]
  pixels = background.pack("C4") * (size * size)
  scale = size / 64.0
  point = ->(x, y) { [(x * scale).round, (y * scale).round] }
  mark_stroke = [(1.05 * scale).round, 1].max
  leaf_stroke = [(1.4 * scale).round, 1].max

  social_circle(
    pixels, size, size, (32 * scale).round, (32 * scale).round,
    (25 * scale).round, mark_stroke, copper,
  )

  social_curve(
    pixels, size, size,
    [point.call(17, 20), point.call(26, 21), point.call(31, 25), point.call(32, 32)],
    leaf_stroke, pale,
  )
  social_line(pixels, size, size, point.call(32, 32), point.call(32, 50), leaf_stroke, pale)
  social_curve(
    pixels, size, size,
    [point.call(32, 50), point.call(30, 43), point.call(25, 39), point.call(17, 38)],
    leaf_stroke, pale,
  )
  social_line(pixels, size, size, point.call(17, 38), point.call(17, 20), leaf_stroke, pale)

  social_curve(
    pixels, size, size,
    [point.call(47, 20), point.call(38, 21), point.call(33, 25), point.call(32, 32)],
    leaf_stroke, pale,
  )
  social_curve(
    pixels, size, size,
    [point.call(32, 50), point.call(34, 43), point.call(39, 39), point.call(47, 38)],
    leaf_stroke, pale,
  )
  social_line(pixels, size, size, point.call(47, 38), point.call(47, 20), leaf_stroke, pale)

  social_curve(
    pixels, size, size,
    [point.call(11, 39), point.call(24, 45), point.call(40, 45), point.call(53, 39)],
    mark_stroke, copper,
  )
  social_disk(
    pixels, size, size, (50 * scale).round, (16 * scale).round,
    [(3 * scale).round, 1].max, copper,
  )

  png_data(size, size, pixels)
end

def write_brand_icons(directory)
  icon_32 = brand_icon_png(32)
  File.binwrite(directory.join("favicon.ico"),
                [0, 1, 1].pack("vvv") +
                [32, 32, 0, 0, 1, 32, icon_32.bytesize, 22].pack("CCCCvvVV") + icon_32)
  File.binwrite(directory.join("apple-touch-icon.png"), brand_icon_png(180))
  File.binwrite(directory.join("icon-192.png"), brand_icon_png(192))
  File.binwrite(directory.join("icon-512.png"), brand_icon_png(512))
end

def write_social_card(path)
  width = 1200
  height = 630
  pixels = String.new(capacity: width * height * 4, encoding: Encoding::BINARY)
  height.times do |y|
    width.times do |x|
      left = [1.0 - Math.hypot((x - 190) / 560.0, (y - 170) / 470.0), 0].max
      right = [1.0 - Math.hypot((x - 1060) / 600.0, (y - 560) / 480.0), 0].max
      pixels << [
        (16 + (7 * left) + (34 * right)).round,
        (25 + (43 * left) + (12 * right)).round,
        (29 + (47 * left) + (5 * right)).round,
        255,
      ].pack("C4")
    end
  end

  ink = [225, 143, 80, 255]
  pale = [248, 246, 238, 255]
  muted = [190, 205, 199, 255]
  180.times do |index|
    x = (index * 97 + 41) % width
    y = (index * 53 + 29) % height
    social_disk(pixels, width, height, x, y, index % 11 == 0 ? 2 : 1, [63, 78, 76, 255])
  end
  720.times do |index|
    angle = index * Math::PI / 360
    social_disk(
      pixels, width, height,
      175 + (112 * Math.cos(angle)).round,
      315 + (112 * Math.sin(angle)).round,
      3, ink,
    )
  end
  social_line(pixels, width, height, [108, 265], [145, 279], 4, ink)
  social_line(pixels, width, height, [145, 279], [175, 321], 4, ink)
  social_line(pixels, width, height, [175, 321], [175, 405], 4, ink)
  social_line(pixels, width, height, [242, 265], [205, 279], 4, ink)
  social_line(pixels, width, height, [205, 279], [175, 321], 4, ink)
  social_line(pixels, width, height, [85, 354], [175, 378], 3, ink)
  social_line(pixels, width, height, [175, 378], [265, 354], 3, ink)
  social_disk(pixels, width, height, 250, 235, 11, ink)
  social_text(pixels, width, height, "TSONU CANON", 345, 220, 12, pale)
  social_text(pixels, width, height, "AN ATLAS OF SEVERAL WORLDS", 349, 340, 4, muted)
  social_line(pixels, width, height, [350, 401], [1090, 401], 1, [105, 126, 121, 255])
  social_text(pixels, width, height, "THE GLASS FRONTIER", 350, 445, 4, [190, 225, 222, 255])
  social_text(pixels, width, height, "THE DRY WAR", 850, 445, 4, [232, 193, 157, 255])

  File.binwrite(path, png_data(width, height, pixels))
end

root = Lorecraft::Worlds.repo_root
public_out = Pathname.new(ARGV.shift || root.join("build", "site"))
internal_out = Pathname.new(ARGV.shift || root.join("build", "site-internal"))
revision = ENV["SOURCE_REVISION"]
revision = Open3.capture2("git", "-C", root.to_s, "rev-parse", "HEAD").first.strip if revision.to_s.empty?

FileUtils.rm_rf(public_out)
FileUtils.rm_rf(internal_out)
public_out.mkpath
internal_out.mkpath

FileUtils.cp_r(root.join("apps", "web", "public").children, public_out)
write_brand_icons(public_out)

worlds = Lorecraft::Worlds.all(root).reject(&:scaffold?).map do |entry|
  world = Lorecraft.load(entry.glob, prelude: entry.prelude)
  world.validate!
  Lorecraft::Render::Site.new(world, root: root).render(
    out: public_out,
    internal_out: internal_out,
    world_id: entry.id,
    title: entry.title,
    revision: revision,
  )
end

manifest = {
  schema_version: Lorecraft::Render::Site::SCHEMA_VERSION,
  title: "Tsonu Canon",
  revision: revision,
  default_world: Lorecraft::Worlds.default_id(root),
  worlds: worlds,
}
public_out.join("manifest.json").write(JSON.pretty_generate(manifest) + "\n")
internal_out.join("manifest.json").write(JSON.pretty_generate(manifest) + "\n")
public_out.join("config.js").write(<<~JS)
  window.__APP_CONFIG__ = Object.assign(window.__APP_CONFIG__ || {}, {
    editorialApiUrl: "https://api.canon.tsonu.com",
    auth: null
  });
JS

routes = {
  "/" => {
    title: "Tsonu Canon",
    description: "Worlds held in common: their places, people, histories and unfinished questions.",
    image: "/og/tsonu-canon.png",
    og_type: "website",
  },
}
worlds.each do |world|
  routes["/#{world[:id]}"] = {
    title: world[:title],
    description: world[:description],
    image: "/og/tsonu-canon.png",
    og_type: "website",
    world_id: world[:id],
  }
  index = JSON.parse(public_out.join("worlds", world[:id], "index.json").read)
  index.fetch("entries").each do |entry|
    routes[entry.fetch("route")] = {
      title: "#{entry.fetch('title')} · #{world[:title]}",
      description: entry.fetch("summary", world[:description]),
      world_id: world[:id],
      entry_id: entry.fetch("id"),
      image: "/og/tsonu-canon.png",
      og_type: "article",
    }
  end
end
public_out.join("opengraph.json").write(JSON.pretty_generate({
  schema_version: Lorecraft::Render::Site::SCHEMA_VERSION,
  revision: revision,
  routes: routes,
}) + "\n")

public_out.join("og").mkpath
write_social_card(public_out.join("og", "tsonu-canon.png"))

puts "built #{worlds.size} worlds at revision #{revision[0, 12]}"
puts "public:   #{public_out}"
puts "internal: #{internal_out}"
