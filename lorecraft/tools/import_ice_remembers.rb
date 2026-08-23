#!/usr/bin/env ruby
# frozen_string_literal: true

# Reproducible migration from the pinned deployed Canonry Viewer bundle to
# native Lorecraft source. The era mode imports the complete era record plus
# every cross-era source explicitly cited by one of its accepted chronicles.

require "digest"
require "fileutils"
require "json"
require "open-uri"
require "optparse"
require "pathname"
require "set"
require_relative "../lib/lorecraft"

ROOT = Pathname.new(__dir__).join("../..").expand_path
DEFAULT_SOURCE = "https://theiceremembers.com/bundles/default/bundle.json"
SOURCE_MANIFEST = "https://theiceremembers.com/bundles/default/bundle.manifest.json"
DEFAULT_OUT = ROOT.join("worlds/ice-remembers/world")
EXPECTED_SHA256 = "c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09"
EXPECTED_MANIFEST_SHA256 = "65be5f1d6947752eec7eb601fa5d013f6066e109b39d6439329d7a5122d25f18"
CANONRY_MEDIA_ORIGIN = "https://theiceremembers.com"

KIND_MAP = {
  ["ability", "combat"] => %i[ability combat_ability],
  ["ability", "magic"] => %i[ability magic_ability],
  ["ability", "technology"] => %i[ability technical_ability],
  ["artifact", "instrument"] => %i[artifact instrument],
  ["artifact", "relic"] => %i[artifact relic],
  ["artifact", "tome"] => %i[artifact tome],
  ["artifact", "weapon"] => %i[artifact weapon],
  ["faction", "company"] => %i[faction company],
  ["faction", "criminal"] => %i[faction criminal_network],
  ["faction", "cult"] => %i[faction religious_order],
  ["faction", "political"] => %i[faction political_body],
  ["location", "anomaly"] => %i[geographic_location anomalous_site],
  ["location", "colony"] => %i[geographic_location colony],
  ["location", "point_of_interest"] => %i[geographic_location point_of_interest],
  ["location", "resource_node"] => %i[geographic_location resource_site],
  ["npc", "hero"] => %i[npc hero],
  ["npc", "mayor"] => %i[npc mayor],
  ["npc", "merchant"] => %i[npc merchant],
  ["npc", "orca"] => %i[npc orca],
  ["npc", "outlaw"] => %i[npc outlaw],
  ["occurrence", "celebration"] => %i[incident celebration],
  ["occurrence", "disaster"] => %i[incident disaster],
  ["occurrence", "succession_crisis"] => %i[incident succession_crisis],
  ["occurrence", "war"] => %i[conflict war],
  ["rule", "ideology"] => %i[concept ideology],
  ["rule", "law"] => %i[edict law],
  ["rule", "memorial"] => %i[concept memorial_practice],
  ["rule", "social"] => %i[concept social_practice],
}.freeze

RELATION_MAP = {
  "active_during" => [:active_during, false],
  "adjacent_to" => [:adjacent_to, false],
  "allied_with" => [:allied_with, false],
  "believer_of" => [:believes_in, false],
  "blessed_by" => [:blessed_by, false],
  "catalyst_of" => [:catalyzed, false],
  "celebrated_by" => [:celebrated_by, false],
  "central_to" => [:central_to, false],
  "commemorates" => [:commemorates, false],
  "contained_by" => [:part_of, false],
  "contains" => [:part_of, true],
  "controls" => [:controls, false],
  "corrupted_by" => [:corrupted_by, false],
  "created_by" => [:created, true],
  "created_during" => [:created_during, false],
  "derived_from" => [:derived_from, false],
  "desecrated" => [:desecrated, false],
  "discovered_by" => [:discovered_by, false],
  "empowered_by" => [:empowered_by, false],
  "enemy_of" => [:enemy_of, false],
  "epicenter_of" => [:occurred_at, false],
  "explorer_of" => [:explores, false],
  "guardian_of" => [:guards, false],
  "instigated_by" => [:instigated_by, false],
  "leader_of" => [:leads, false],
  "manifests_at" => [:manifests_at, false],
  "member_of" => [:member_of, false],
  "occupies" => [:occupies, false],
  "occurred_at" => [:occurred_at, false],
  "originated_in" => [:originated_in, false],
  "owned_by" => [:owned_by, false],
  "participant_in" => [:participated_in, false],
  "practitioner_of" => [:practiced_by, true],
  "resident_of" => [:inhabits, false],
  "splinter_of" => [:splinter_of, false],
  "stored_at" => [:located_in, false],
  "subsumes" => [:subsumes, false],
  "supersedes" => [:succeeded, false],
  "taught_by" => [:taught, true],
  "trades_with" => [:trades_with, false],
  "triggered_by" => [:triggered_by, false],
}.freeze

RELATED_CLASSIFICATIONS = {
  "aureate-merchant-guilds-born:stillness-bound:related_to" => [:bound_by, false, "the charter grants Aureate its trading authority"],
  "collective-of-shadow-covens:pactum-ne:related_to" => [:bound_by, false, "the charter governs every Collective contract"],
  "e-frostlings:long-dark-edict:related_to" => [:bound_by, false, "both entries state that E'frostlings operates under the Edict"],
  "iarlocias-the-silent:dawn-mandate:related_to" => [:subject_to, false, "Iarlocias is recorded as operating under the Mandate's provisions"],
  "ofund-guild:foedus-vincu:related_to" => [:bound_by, false, "the charter grants the guild its fire-core trading authority"],
  "pactum-myster:glacial-crystalline-spiral:related_to" => [:prescribes, false, "the doctrine requires the crystalline memory practice"],
  "rend-kzul-orca-marauders:foedus-silenti:related_to" => [:provoked, false, "Rend Kzulrora's tracking methods prompted the silence law"],
  "the-cell-owl-sworn:pactum-silenti:related_to" => [:bound_by, false, "the law governs the Cell's trade and artifact custody"],
  "the-communion-elt-sworn:glacial-crystalline-spiral:related_to" => [:practiced_by, true, "the Communion is recorded as practicing the crystalline memory art"],
  "the-way-al:mandatum-absconditu:related_to" => [:derived_from, false, "The Way develops the older doctrine's claim that survival demands secrecy"],
  "the-way-al-2:pactum-myster:related_to" => [:derived_from, false, "the Firekeeper Doctrine explicitly builds on Pactum myster"],
  "the-way-ens:the-way-al:related_to" => [:opposes, false, "one doctrine requires free exchange while the other requires severance"],
  "thung-gnark-krul:clear-sky-mandate:related_to" => [:provoked, false, "Jark Rankzule's raids prompted the Mandate"],
  "thung-gnash-threk:thaw-kept:related_to" => [:judged_under, false, "Grandfather Blood was tried and exiled under Thaw-Kept authority"],
  "thung-thrak-threk:iudicium-culum:related_to" => [:provoked, false, "Thung Thrakrek's infiltration prompted the decree"],
}.freeze

TAG_MAP = {
  "trade" => :trade,
  "mystical" => :magic,
  "magic" => :magic,
  "political" => :governance,
  "conflict" => :conflict,
  "war_marked" => :conflict,
  "resource" => :resources,
  "corrupted" => :corruption,
  "ancient" => :remembrance,
  "ice_witnessed" => :ice_memory,
}.freeze

CULTURE_TAGS = {
  "aurora-stack" => :aurora_stack,
  "nightshelf" => :nightshelf,
  "orca" => :orca,
}.freeze

NOTE_ANCHOR_CORRECTIONS = {
  "note_1771579366910_3" => "The relevant strata contain a gap in the precise shape of a pillar",
  "note_1771577099848_3" => "Adherents who share personal confidences — not doctrine, but ordinary tenderness — report their communion-visions dimming proportionally",
  "note_1771580695267_3" => "The factional registry also records Holdborn",
  "note_1771580065110_4" => "not as knocking but as *counting*",
  "note_1771574448490_3" => "Fire-core output from the colony's deep veins dropped forty percent",
  "note_1771585709835_1" => "pioneered by the war-shaman **Thung Thrakrek** during **Slaughter Moon**",
  "note_1771590900784_3" => "pressing flippers to deep-ice walls and claiming to see *old dead birds who used to be.*",
  "note_1771582810925_1" => "the practice's essential catalyst is not fire-core heat but the resonance of **The Dreaming Tooth**",
  "note_1771584852985_0" => "remarkably — **Qingqe'frostlings**, an Aurora-aligned governing council, suggests proliferation well beyond its Nightshelf origins",
  "note_1771582353102_2" => "The relationship listed in the Nightshelf archive is *catalyst_of* the Pta∴extinct",
  "note_1771587359440_3" => "the casting of the Grrul-kzul-strike",
  "note_1771592090759_3" => "her flipper trembled when she spoke the names of the dead",
  "note_1771578866802_0" => "the archive does not record whether by force, negotiation, or the corruption",
  "note_1771586452551_0" => "Declare the Flipper Accord dead",
  "note_1771595095143_0" => "**Echo∴eliquiae**, **Foedus∴vincu**, **Mandatum∴ccord**, **Memoria∴moria**, and **Ritus∴um** — an extraordinary legislative response",
  "note_1771587417873_1" => "Keeper-Registrar ☽'noctmuluevus 'born, states plainly that Augur *crafted* it",
  "note_1771587417873_3" => "The summary record uses the word *dispersed*",
  "note_1771587713950_1" => "he turned away from the fire-cores toward **The Thrumed~ Shadow-glass**",
  "note_1771586695424_3" => "signed with a crude fluke-mark or the initials *J.R.Z.*",
  "note_1771582753008_2" => "Something vast. Something that watched from beneath the frozen sea with the patience of a god that does not need to breathe",
  "note_1771587625004_1" => "The observers are prisoners are dreamers are the watched and the watching collapsed into shared witness",
  "note_1771581513498_1" => "After the orca walked among us wearing our faces, learning our names",
  "note_1771591035072_5" => "The whisper-echoes in the tunnels are simply pressure acoustics",
  "note_1771591603684_4" => "showing notches that had smoothed to near-nothing over years of gnashing in dark water. A lineage worn away to suggestion",
  "note_1771584816176_1" => "The first penguin to master it walked through an orca raid untouched",
  "note_1771582304655_5" => "An Exchange assessor checking authentication seals",
  "note_1771590801121_2" => "A sound with no name in this cycle, or the last, or the one before",
  "note_1771593338145_1" => "a syndicate charged under *Iudicium∴culum* with thirty winters of unsanctioned governance, fire-core diversion, and the disappearance of eleven colony members",
}.freeze

MEDIA_ANCHOR_FALLBACK_PHRASES = {
  "imgref_1769623397391_2" => "The chisel rang against stone. Amendment Fifty-Eight.",
  "enimgref_1771759336856_0" => "The Aurora Stack convened its councils and held its votes",
  "enimgref_1771759336856_1" => "The Nightshelf sharpened its primary cross-factional weapon",
  "enimgref_1771759336856_2" => "In the memorial corridors, a Remembrancer named Obscureth~ carved what was mandated",
  "enimgref_1771759336856_3" => "The ice wept before the Nightshelf acknowledged the Obelisk's rise",
  "enimgref_1771759336856_4" => "The Accord's formal apparatus continued holding votes while the corridors beneath it moved material that answered to no charter and no quorum",
  "enimgref_1771759458095_0" => "The orca came as a civilization",
  "enimgref_1771759458095_3" => "At Momiou in the year 169, both cultures' laws broke together",
}.freeze

TEMPORAL_DESCRIPTION_CORRECTIONS = {
  "chronicle_1771137301901_72dj2h" =>
    "The surviving compilation is assigned to tick 0; no ending tick was recorded.",
}.freeze

def id_for(value)
  value.to_s.tr("-", "_").to_sym
end

def source_relationship_id(relation)
  "#{relation.fetch('src')}:#{relation.fetch('dst')}:#{relation.fetch('kind')}"
end

def prominence_for(value)
  score = Float(value || 0)
  return :forgotten if score < 1
  return :marginal if score < 2
  return :recognized if score < 3
  return :renowned if score < 4

  :mythic
end

def cultural_origin(value)
  case value
  when "aurora-stack" then "Aurora Stack"
  when "nightshelf" then "Nightshelf"
  when "orca" then "Orca"
  when "world" then "World record"
  else value.to_s
  end
end

def tags_for(entity)
  tags = []
  tags << CULTURE_TAGS[entity["culture"]] if CULTURE_TAGS.key?(entity["culture"])
  entity.fetch("tags", {}).each do |name, value|
    tags << TAG_MAP[name] if value && TAG_MAP.key?(name)
  end
  tags.compact.uniq
end

def entity_ids_in(value, known_ids)
  case value
  when Array
    value.flat_map { |item| entity_ids_in(item, known_ids) }
  when Hash
    value.flat_map do |key, item|
      ids = entity_ids_in(item, known_ids)
      ids << item if key.to_s == "id" && item.is_a?(String) && known_ids.include?(item)
      ids
    end.uniq
  else
    []
  end
end

def append_heredoc(lines, invocation, text, base, args: nil)
  terminator = base
  source_lines = text.to_s.lines(chomp: true)
  terminator += "_" while source_lines.any? { |line| line == terminator }
  opener = args ? "#{invocation}(<<~'#{terminator}', #{args})" : "#{invocation} <<~'#{terminator}'"
  lines << opener
  source_lines.each { |line| lines << "    #{line}" }
  lines << "  #{terminator}"
end

def write_generated(path, lines, written)
  FileUtils.mkdir_p(path.dirname)
  File.write(path, "#{lines.join("\n")}\n", mode: "w", encoding: "UTF-8")
  written << path
end

def image_url(bundle, asset_id)
  return if asset_id.to_s.empty?

  path = bundle.fetch("images", {})[asset_id]
  return path unless path&.start_with?("/")

  "#{CANONRY_MEDIA_ORIGIN}#{path}"
end

def entity_image_id(entity)
  entity.dig("enrichment", "image", "imageId")
end

def append_annotation(lines, note)
  source_anchor = note.fetch("anchorPhrase")
  anchor = NOTE_ANCHOR_CORRECTIONS.fetch(note.fetch("noteId"), source_anchor)
  args = [
    note.fetch("noteId").inspect,
    "anchor: #{anchor.inspect}",
    "text: #{note.fetch('text').inspect}",
    "type: #{(note['type'] || 'historian').to_sym.inspect}",
    "display: #{(note['display'] || 'popout').to_sym.inspect}",
  ]
  args << "source_anchor: #{source_anchor.inspect}" if anchor != source_anchor
  lines << "  annotation #{args.join(', ')}"
end

def append_media(lines, asset_id:, role:, url:, ref: nil, source_entity: nil)
  args = [asset_id.inspect, "role: #{role.inspect}"]
  args << "url: #{url.inspect}" if url
  args << "anchor: #{ref['anchorText'].inspect}" if ref&.key?("anchorText")
  args << "anchor_index: #{ref['anchorIndex'].inspect}" if ref&.key?("anchorIndex")
  args << "caption: #{ref['caption'].inspect}" if ref&.key?("caption")
  args << "size: #{ref['size'].to_sym.inspect}" if ref&.fetch("size", nil)
  args << "justification: #{ref['justification'].to_sym.inspect}" if ref&.fetch("justification", nil)
  args << "source_entity: #{source_entity.inspect}" if source_entity
  args << "reference_id: #{ref['refId'].inspect}" if ref&.fetch("refId", nil)
  lines << "  image #{args.join(', ')}"
end

def chronicle_media(bundle, chronicle, entity_by_id)
  media = []
  cover_id = chronicle.dig("coverImage", "generatedImageId")
  if chronicle.dig("coverImage", "status") == "complete" && cover_id
    media << { asset_id: cover_id, role: :cover, url: image_url(bundle, cover_id) }
  end

  chronicle.dig("imageRefs", "refs").to_a.each do |ref|
    ref = ref.dup
    if (fallback_phrase = MEDIA_ANCHOR_FALLBACK_PHRASES[ref["refId"]]) && !ref.key?("anchorIndex")
      fallback = chronicle.fetch("finalContent").index(fallback_phrase)
      abort "media fallback phrase is missing for #{ref['refId']}" unless fallback

      ref["anchorIndex"] = fallback
    end
    case ref["type"]
    when "entity_ref"
      source = entity_by_id[ref["entityId"]]
      asset_id = source && entity_image_id(source)
      next unless asset_id

      media << {
        asset_id: asset_id, role: :inline, url: image_url(bundle, asset_id), ref: ref,
        source_entity: id_for(ref["entityId"]),
      }
    when "prompt_request"
      next unless ref["status"] == "complete" && ref["generatedImageId"]

      asset_id = ref["generatedImageId"]
      media << { asset_id: asset_id, role: :inline, url: image_url(bundle, asset_id), ref: ref }
    end
  end
  media
end

def era_narrative_media(bundle, narrative, chronicle_by_id)
  media = []
  cover_id = narrative.dig("coverImage", "generatedImageId")
  if narrative.dig("coverImage", "status") == "complete" && cover_id
    media << { asset_id: cover_id, role: :cover, url: image_url(bundle, cover_id) }
  end

  narrative.dig("imageRefs", "refs").to_a.each do |ref|
    ref = ref.dup
    if (fallback_phrase = MEDIA_ANCHOR_FALLBACK_PHRASES[ref["refId"]]) && !ref.key?("anchorIndex")
      fallback = narrative.fetch("content").index(fallback_phrase)
      abort "era narrative media fallback phrase is missing for #{ref['refId']}" unless fallback

      ref["anchorIndex"] = fallback
    end
    asset_id = case ref["type"]
               when "chronicle_ref"
                 chronicle_by_id.dig(ref["chronicleId"], "coverImage", "generatedImageId")
               when "prompt_request"
                 ref["generatedImageId"] if ref["status"] == "complete"
               end
    next unless asset_id

    media << { asset_id: asset_id, role: :inline, url: image_url(bundle, asset_id), ref: ref }
  end
  media
end

def annotation_signature(annotation)
  {
    id: annotation.id,
    anchor: annotation.anchor,
    source_anchor: annotation.source_anchor,
    text: annotation.text,
    kind: annotation.kind,
    display: annotation.display,
    anchor_index: annotation.anchor_index,
  }
end

def expected_annotation_signature(note)
  source_anchor = note.fetch("anchorPhrase")
  anchor = NOTE_ANCHOR_CORRECTIONS.fetch(note.fetch("noteId"), source_anchor)
  {
    id: note.fetch("noteId"),
    anchor: anchor,
    source_anchor: anchor == source_anchor ? nil : source_anchor,
    text: note.fetch("text"),
    kind: (note["type"] || "historian").to_sym,
    display: (note["display"] || "popout").to_sym,
    anchor_index: nil,
  }
end

def media_signature(reference)
  {
    asset_id: reference.asset_id,
    role: reference.role,
    url: reference.url,
    anchor: reference.anchor,
    anchor_index: reference.anchor_index,
    caption: reference.caption,
    size: reference.size,
    justification: reference.justification,
    source_entity: reference.source_entity,
    reference_id: reference.reference_id,
  }
end

def expected_media_signature(media)
  ref = media[:ref]
  {
    asset_id: media.fetch(:asset_id).to_s,
    role: media.fetch(:role).to_sym,
    url: media[:url],
    anchor: ref&.fetch("anchorText", nil),
    anchor_index: ref&.fetch("anchorIndex", nil),
    caption: ref&.fetch("caption", nil),
    size: ref&.fetch("size", nil)&.to_sym,
    justification: ref&.fetch("justification", nil)&.to_sym,
    source_entity: media[:source_entity]&.to_sym,
    reference_id: ref&.fetch("refId", nil),
  }
end

def verify_equal(label, imported, expected)
  abort "#{label} changed\nexpected: #{expected.inspect}\nimported: #{imported.inspect}" unless imported == expected
end

def fetch_deployed_source(url)
  URI.open(url, "User-Agent" => "Tsonu-Canon-Lorecraft-Importer", read_timeout: 90).read
rescue OpenURI::HTTPError, SocketError, Timeout::Error => e
  abort "could not read deployed Viewer source #{url}: #{e.message}"
end

def clear_previous_imports(out)
  Dir.glob(out.join("_imports", "*.json").to_s).map { |path| Pathname.new(path) }.each do |manifest_path|
    manifest = JSON.parse(manifest_path.read(encoding: "UTF-8"))
    manifest.fetch("files", []).each do |relative_path|
      path = ROOT.join(relative_path).expand_path
      unless path.to_s.start_with?("#{out.expand_path}/")
        abort "refusing to remove generated file outside #{out}: #{path}"
      end
      next unless path.file?

      expected_hash = manifest.fetch("file_sha256", {})[relative_path]
      if expected_hash && Digest::SHA256.file(path).hexdigest != expected_hash
        abort "generated file changed since import: #{relative_path}"
      end
      unless path.read(220, encoding: "UTF-8").include?("Generated from the pinned public Canonry Viewer bundle.")
        abort "refusing to remove file without generated header: #{relative_path}"
      end
      FileUtils.rm_f(path)
    end
    FileUtils.rm_f(manifest_path)
  end
end

options = {
  out: DEFAULT_OUT,
  era: nil,
  all: false,
}

OptionParser.new do |parser|
  parser.banner = "Usage: ruby lorecraft/tools/import_ice_remembers.rb (--era ID | --all) [options]"
  parser.on("--era ID", "Import one complete focal era and its cited cross-era records") do |value|
    options[:era] = value
  end
  parser.on("--all", "Import the complete published world") { options[:all] = true }
  parser.on("--out PATH", "Ice Remembers world directory") { |value| options[:out] = Pathname.new(value) }
end.parse!

abort "choose exactly one of --era ID or --all" if options[:era].nil? == !options[:all]

source = DEFAULT_SOURCE
out = options[:out].expand_path
manifest_bytes = fetch_deployed_source(SOURCE_MANIFEST)
manifest_sha = Digest::SHA256.hexdigest(manifest_bytes)
unless manifest_sha == EXPECTED_MANIFEST_SHA256
  abort "deployed Viewer manifest changed: expected #{EXPECTED_MANIFEST_SHA256}, got #{manifest_sha}"
end
source_manifest = JSON.parse(manifest_bytes)
abort "deployed Viewer manifest no longer names bundle.json as fallback" unless source_manifest["fallback"] == "bundle.json"

source_bytes = fetch_deployed_source(source)
actual_sha = Digest::SHA256.hexdigest(source_bytes)
abort "source bundle checksum changed: expected #{EXPECTED_SHA256}, got #{actual_sha}" unless actual_sha == EXPECTED_SHA256

bundle = JSON.parse(source_bytes)
entities = bundle.dig("worldData", "hardState")
relationships = bundle.dig("worldData", "relationships")
events = bundle.dig("worldData", "narrativeHistory")
entity_by_id = entities.to_h { |entity| [entity.fetch("id"), entity] }
known_entity_ids = entity_by_id.keys.to_set
event_by_id = events.to_h { |event| [event.fetch("id"), event] }
relationship_by_id = relationships.to_h { |relation| [source_relationship_id(relation), relation] }
chronicle_by_id = bundle.fetch("chronicles").to_h { |chronicle| [chronicle.fetch("chronicleId"), chronicle] }

selected_chronicles = bundle.fetch("chronicles").select do |chronicle|
  chronicle["status"] == "complete" &&
    (options[:all] || chronicle.dig("temporalContext", "focalEra", "id") == options[:era])
end
abort "no complete chronicles found for #{options[:era]}" if selected_chronicles.empty?

selected_narratives = bundle.fetch("eraNarratives").select do |narrative|
  narrative["status"] == "complete" && (options[:all] || narrative["eraId"] == options[:era])
end
selected_pages = bundle.fetch("staticPages").reject { |page| page.fetch("title").start_with?("System:") }

if options[:all]
  selected_events = events
  selected_relationships = relationships
else
  focal = selected_chronicles.first.dig("temporalContext", "focalEra")
  starts = focal.fetch("startTick")
  ends = focal.fetch("endTick")
  era_events = events.select { |event| event["tick"] >= starts && event["tick"] < ends }
  cited_events = selected_chronicles.flat_map { |chronicle| chronicle.fetch("selectedEventIds", []) }.map do |id|
    event_by_id.fetch(id) { abort "chronicle cites missing event #{id}" }
  end
  selected_events = (era_events + cited_events).uniq { |event| event.fetch("id") }

  era_relationships = relationships.select do |relation|
    created = relation["createdAt"]
    archived = relation["archivedAt"]
    (created.is_a?(Numeric) && created >= starts && created < ends) ||
      (archived.is_a?(Numeric) && archived >= starts && archived < ends)
  end
  cited_relationships = selected_chronicles.flat_map do |chronicle|
    chronicle.fetch("selectedRelationshipIds", [])
  end.map do |id|
    relationship_by_id.fetch(id) { abort "chronicle cites missing relationship #{id}" }
  end
  selected_relationships = (era_relationships + cited_relationships).uniq do |relation|
    source_relationship_id(relation)
  end
end

selected_entity_ids = if options[:all]
                        known_entity_ids.to_a
                      else
                        selected_chronicles.flat_map { |chronicle| chronicle.fetch("selectedEntityIds", []) }
                      end
selected_events.each do |event|
  selected_entity_ids << event.dig("subject", "id")
  selected_entity_ids.concat(entity_ids_in(event.fetch("participantEffects", []), known_entity_ids))
end
selected_relationships.each do |relation|
  selected_entity_ids << relation.fetch("src")
  selected_entity_ids << relation.fetch("dst")
end
selected_narratives.each { |narrative| selected_entity_ids << narrative.fetch("eraId") }
selected_entity_ids.compact!
selected_entity_ids.uniq!
selected_entities = selected_entity_ids.map do |id|
  entity_by_id.fetch(id) { abort "selected source record names missing entity #{id}" }
end

clear_previous_imports(out)
written = []
header = [
  "# Generated from the pinned public Canonry Viewer bundle.",
  "# Source SHA-256: #{EXPECTED_SHA256}",
  "# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.",
  "",
]

selected_entities.sort_by { |entity| entity.fetch("id") }.each do |entity|
  kind, subkind = if entity["kind"] == "era"
                    %i[era historical_period]
                  else
                    KIND_MAP.fetch([entity["kind"], entity["subtype"]]) do
                      abort "no kind mapping for #{entity['kind']}/#{entity['subtype']} (#{entity['id']})"
                    end
                  end
  entity_id = id_for(entity.fetch("id"))
  lines = header.dup
  lines << "#{kind} #{entity_id.inspect} do"
  lines << "  title #{entity.fetch('name').inspect}"
  lines << "  source_id #{entity.fetch('id').inspect}"
  lines << "  subkind #{subkind.inspect}"
  lines << "  summary #{entity.fetch('summary').inspect}"
  lines << "  status :complete"
  lines << "  prominence #{prominence_for(entity['prominence']).inspect}"
  mapped_tags = tags_for(entity)
  lines << "  tags #{mapped_tags.map(&:inspect).join(', ')}" unless mapped_tags.empty?
  aliases = entity.dig("enrichment", "slugAliases").to_a
  lines << "  aka #{aliases.map(&:inspect).join(', ')}" unless aliases.empty?
  lines << "  source_kind #{entity['kind'].inspect}"
  lines << "  source_subtype #{entity['subtype'].inspect}"
  lines << "  source_culture #{entity['culture'].inspect}"
  lines << "  source_status #{entity['status'].inspect}"
  lines << "  source_prominence #{entity['prominence'].inspect}"
  lines << "  source_tags(#{entity.fetch('tags', {}).inspect})"
  lines << "  source_created_at #{entity['createdAt'].inspect}"
  lines << "  source_era #{entity['eraId'].inspect}"
  lines << "  cultural_origin #{cultural_origin(entity['culture']).inspect}"
  lines << "  world_status #{entity['status'].inspect}"
  created_at = entity["createdAt"]
  lines << "  first_recorded #{created_at}" if created_at.is_a?(Integer) && created_at.between?(0, 240)
  lines << ""
  append_heredoc(
    lines, "  prose", entity.fetch("description"), "CANONICAL_PROSE", args: "origin: :published"
  )
  entity_notes = entity.dig("enrichment", "historianNotes").to_a
  entity_notes.each { |note| append_annotation(lines, note) }
  asset_id = entity_image_id(entity)
  append_media(lines, asset_id: asset_id, role: :entity, url: image_url(bundle, asset_id)) if asset_id
  corrected_notes = entity_notes.filter_map do |note|
    note["noteId"] if NOTE_ANCHOR_CORRECTIONS.key?(note["noteId"])
  end
  unless corrected_notes.empty?
    lines << "  log \"2026-08-23 — retargeted stale published note anchors #{corrected_notes.join(', ')} to their surviving passages; each original remains in source_anchor.\""
  end
  selected_relationships.select do |relation|
    relation["kind"] == "related_to" && relation["src"] == entity["id"]
  end.each do |relation|
    source_id = source_relationship_id(relation)
    verb, _reverse, rationale = RELATED_CLASSIFICATIONS.fetch(source_id)
    message = "2026-08-23 — classified source relation #{source_id} as #{verb}; #{rationale}."
    lines << "  log #{message.inspect}"
  end
  lines << "end"

  write_generated(out.join(kind.to_s, "#{entity.fetch('id')}.rb"), lines, written)
end

event_lines = header.dup
selected_events.sort_by { |event| [event.fetch("tick"), event.fetch("id")] }.each do |event|
  participants = entity_ids_in(event.fetch("participantEffects", []), known_entity_ids).map { |id| id_for(id) }
  event_lines << "event_record #{event.fetch('id').inspect}, tick: #{event.fetch('tick')}, " \
                 "era: #{id_for(event.fetch('era')).inspect}, kind: #{event.fetch('eventKind').to_sym.inspect},"
  event_lines << "             subject: #{id_for(event.dig('subject', 'id')).inspect}, " \
                 "action: #{event['action'].inspect}, description: #{event['description'].inspect},"
  event_lines << "             significance: #{event['significance'].inspect}, " \
                 "tags: #{event.fetch('narrativeTags', []).map { |tag| tag.to_sym.inspect }.join(', ').then { |tags| "[#{tags}]" }},"
  event_lines << "             participants: #{participants.inspect}, " \
                 "participant_effects: #{event.fetch('participantEffects', []).inspect},"
  event_lines << "             caused_by: #{event['causedBy'].inspect}"
  event_lines << ""
end
write_generated(out.join("events", options[:all] ? "published_record.rb" : "#{options[:era]}.rb"), event_lines, written)

relationship_lines = header.dup
selected_relationships.sort_by { |relation| source_relationship_id(relation) }.each do |relation|
  source_id = source_relationship_id(relation)
  verb, reverse, = if relation["kind"] == "related_to"
                     RELATED_CLASSIFICATIONS.fetch(source_id) do
                      abort "related_to needs editorial classification: #{source_id}"
                     end
                   else
                     RELATION_MAP.fetch(relation["kind"]) do
                      abort "no relation mapping for #{relation['kind']}"
                     end
                   end
  source_entity = id_for(reverse ? relation.fetch("dst") : relation.fetch("src"))
  target_entity = id_for(reverse ? relation.fetch("src") : relation.fetch("dst"))
  relation_id = "source_#{Digest::SHA256.hexdigest(source_id)[0, 16]}".to_sym
  temporal = ["since: #{relation.fetch('createdAt')}"]
  temporal << "till: #{relation['archivedAt']}" if relation["archivedAt"]
  relationship_lines << "relate #{relation_id.inspect}, #{verb.inspect}, #{source_entity.inspect}, " \
                        "#{target_entity.inspect}, #{temporal.join(', ')} do"
  relationship_lines << "  source_id #{source_id.inspect}"
  relationship_lines << "  source_metadata(#{relation.inspect})"
  relationship_lines << "end"
  relationship_lines << ""
end
write_generated(
  out.join(options[:all] ? "_relationships_published.rb" : "_relationships_#{options[:era]}.rb"),
  relationship_lines,
  written,
)

selected_chronicles.sort_by { |chronicle| chronicle.fetch("chronicleId") }.each do |chronicle|
  chronicle_id = id_for(chronicle.fetch("chronicleId"))
  range = chronicle.dig("temporalContext", "chronicleTickRange")
  lines = header.dup
  lines << "chronicle #{chronicle_id.inspect} do"
  lines << "  source_id #{chronicle.fetch('chronicleId').inspect}"
  lines << "  title #{chronicle.fetch('title').inspect}"
  lines << "  summary #{chronicle.fetch('summary').inspect}"
  lines << "  status :complete"
  lines << "  format #{chronicle.fetch('format').to_sym.inspect}"
  lines << "  focus #{chronicle.fetch('focusType').to_sym.inspect}"
  lines << "  narrative_style #{chronicle.fetch('narrativeStyleId').tr('-', '_').to_sym.inspect}"
  lines << "  focal_era #{id_for(chronicle.dig('temporalContext', 'focalEra', 'id')).inspect}"
  lines << "  ticks from: #{range.first.inspect}, to: #{range.last.inspect}"
  source_temporal_description = chronicle.dig("temporalContext", "temporalDescription")
  temporal_description = TEMPORAL_DESCRIPTION_CORRECTIONS.fetch(
    chronicle.fetch("chronicleId"), source_temporal_description
  )
  lines << "  temporal_description #{temporal_description.inspect}"
  if temporal_description != source_temporal_description
    lines << "  source_temporal_description #{source_temporal_description.inspect}"
  end
  touched = chronicle.dig("temporalContext", "touchedEraIds").to_a.map { |id| id_for(id) }
  lines << "  touched_eras #{touched.map(&:inspect).join(', ')}" unless touched.empty?
  lines << "  entrypoint #{id_for(chronicle['entrypointId']).inspect}" if chronicle["entrypointId"]
  selected = chronicle.fetch("selectedEntityIds", []).map { |id| id_for(id) }
  lines << "  entities #{selected.map(&:inspect).join(', ')}" unless selected.empty?
  cited_events = chronicle.fetch("selectedEventIds", [])
  lines << "  events #{cited_events.map(&:inspect).join(', ')}" unless cited_events.empty?
  cited_relationships = chronicle.fetch("selectedRelationshipIds", [])
  lines << "  relationships #{cited_relationships.map(&:inspect).join(', ')}" unless cited_relationships.empty?
  roles = chronicle.fetch("roleAssignments", []).to_h do |assignment|
    [id_for(assignment.fetch("entityId")), { role: assignment.fetch("role"), primary: assignment["isPrimary"] == true }]
  end
  lines << "  roles(#{roles.inspect})" unless roles.empty?
  lines << ""
  append_heredoc(
    lines, "  prose", chronicle.fetch("finalContent"), "CANONICAL_CHRONICLE", args: "origin: :published"
  )
  chronicle_notes = chronicle.fetch("historianNotes", [])
  chronicle_notes.each { |note| append_annotation(lines, note) }
  chronicle_media(bundle, chronicle, entity_by_id).each { |media| append_media(lines, **media) }
  corrected_notes = chronicle_notes.filter_map do |note|
    note["noteId"] if NOTE_ANCHOR_CORRECTIONS.key?(note["noteId"])
  end
  unless corrected_notes.empty?
    lines << "  log \"2026-08-23 — retargeted stale published note anchors #{corrected_notes.join(', ')} to their surviving passages; each original remains in source_anchor.\""
  end
  corrected_media = chronicle.dig("imageRefs", "refs").to_a.filter_map do |ref|
    ref["refId"] if MEDIA_ANCHOR_FALLBACK_PHRASES.key?(ref["refId"])
  end
  unless corrected_media.empty?
    lines << "  log \"2026-08-23 — added a character fallback for stale source image anchor #{corrected_media.join(', ')}; the published anchor text is retained.\""
  end
  if temporal_description != source_temporal_description
    lines << "  log \"2026-08-23 — replaced the source's impossible negative-infinity duration with the recorded open tick range; the source wording remains in source_temporal_description.\""
  end
  lines << "end"
  write_generated(out.join("chronicles", "#{chronicle.fetch('chronicleId')}.rb"), lines, written)
end

selected_narratives.sort_by { |narrative| narrative.fetch("narrativeId") }.each do |narrative|
  lines = header.dup
  lines << "era_narrative #{id_for(narrative.fetch('narrativeId')).inspect} do"
  lines << "  source_id #{narrative.fetch('narrativeId').inspect}"
  lines << "  title #{narrative.fetch('eraName').inspect}"
  lines << "  status :complete"
  lines << "  era #{id_for(narrative.fetch('eraId')).inspect}"
  lines << "  thesis #{narrative.fetch('thesis').inspect}"
  lines << "  tone #{narrative.fetch('tone').inspect}"
  source_chronicles = narrative.fetch("sourceChronicles").map { |item| id_for(item.fetch("chronicleId")) }
  lines << "  source_chronicles #{source_chronicles.map(&:inspect).join(', ')}"
  lines << ""
  append_heredoc(
    lines, "  prose", narrative.fetch("content"), "CANONICAL_ERA_NARRATIVE", args: "origin: :published"
  )
  era_narrative_media(bundle, narrative, chronicle_by_id).each { |media| append_media(lines, **media) }
  corrected_media = narrative.dig("imageRefs", "refs").to_a.filter_map do |ref|
    ref["refId"] if MEDIA_ANCHOR_FALLBACK_PHRASES.key?(ref["refId"])
  end
  unless corrected_media.empty?
    lines << "  log \"2026-08-23 — added character fallbacks for stale published image anchors #{corrected_media.join(', ')}; the published anchor text is retained.\""
  end
  lines << "end"
  write_generated(out.join("era_narratives", "#{narrative.fetch('narrativeId')}.rb"), lines, written)
end

selected_pages.sort_by { |page| page.fetch("slug") }.each do |page|
  category = page.fetch("title").split(":", 2).first.downcase.to_sym
  lines = header.dup
  lines << "page #{id_for(page.fetch('slug')).inspect}, title: #{page.fetch('title').inspect}, " \
           "wiki: #{page.fetch('slug').inspect} do"
  lines << "  source_id #{page.fetch('pageId').inspect}"
  lines << "  summary #{page.fetch('summary').inspect}"
  lines << "  status :complete"
  lines << "  category #{category.inspect}"
  lines << "  source_status #{page.fetch('status').inspect}"
  linked_entities = page.fetch("linkedEntityIds", []).map { |id| id_for(id) }
  lines << "  linked_entities #{linked_entities.map(&:inspect).join(', ')}" unless linked_entities.empty?
  lines << ""
  append_heredoc(
    lines, "  prose", page.fetch("content"), "CANONICAL_PAGE", args: "origin: :published"
  )
  lines << "end"
  write_generated(out.join("pages", "#{page.fetch('slug')}.rb"), lines, written)
end

manifest = {
  "source" => source,
  "sha256" => actual_sha,
  "source_manifest" => SOURCE_MANIFEST,
  "source_manifest_sha256" => manifest_sha,
  "source_manifest_generated_at" => source_manifest["generatedAt"],
  "source_core" => source_manifest["core"],
  "scope" => options[:all] ? "all" : options[:era],
  "counts" => {
    "entities" => selected_entities.length,
    "events" => selected_events.length,
    "relationships" => selected_relationships.length,
    "chronicles" => selected_chronicles.length,
    "eraNarratives" => selected_narratives.length,
    "pages" => selected_pages.length,
  },
  "files" => written.map { |path| path.relative_path_from(ROOT).to_s }.sort,
  "file_sha256" => written.to_h do |path|
    [path.relative_path_from(ROOT).to_s, Digest::SHA256.file(path).hexdigest]
  end,
}
manifest_path = out.join("_imports", options[:all] ? "published-record.json" : "#{options[:era]}.json")
FileUtils.mkdir_p(manifest_path.dirname)
File.write(manifest_path, "#{JSON.pretty_generate(manifest)}\n", mode: "w", encoding: "UTF-8")

world = Lorecraft::World.load(
  out.join("**/*.rb").to_s,
  prelude: [ROOT.join("craft/schema/base.rb").to_s],
)
problems = world.validate
abort "generated world is invalid:\n#{problems.join("\n")}" unless problems.empty?

source_entities = selected_entities.to_h { |entity| [entity.fetch("id"), entity] }
source_entities.each do |source_id, source_entity|
  imported = world.entities.values.find { |entity| entity.source_id == source_id }
  abort "missing imported entity #{source_id}" unless imported
  abort "summary changed for #{source_id}" unless imported.summary == source_entity.fetch("summary")
  imported_prose = imported.prose_blocks.map(&:text).join("\n\n").strip
  abort "description changed for #{source_id}" unless imported_prose == source_entity.fetch("description").strip
  expected_annotations = source_entity.dig("enrichment", "historianNotes").to_a.map do |note|
    expected_annotation_signature(note)
  end
  verify_equal("annotations for #{source_id}", imported.annotations.map { |note| annotation_signature(note) }, expected_annotations)
  asset_id = entity_image_id(source_entity)
  expected_media = if asset_id
                     [{ asset_id: asset_id, role: :entity, url: image_url(bundle, asset_id) }]
                   else
                     []
                   end
  verify_equal(
    "media for #{source_id}",
    imported.media_references.map { |reference| media_signature(reference) },
    expected_media.map { |media| expected_media_signature(media) },
  )
end

selected_events.each do |source_event|
  imported = world.event_record(source_event.fetch("id"))
  abort "missing imported event #{source_event['id']}" unless imported
  expected_event = {
    tick: source_event.fetch("tick"), era: id_for(source_event.fetch("era")),
    event_kind: source_event.fetch("eventKind").to_sym,
    subject: id_for(source_event.dig("subject", "id")), action: source_event["action"],
    description: source_event["description"], significance: source_event["significance"],
    tags: source_event.fetch("narrativeTags", []).map(&:to_sym),
    participants: entity_ids_in(source_event.fetch("participantEffects", []), known_entity_ids).map { |id| id_for(id) },
    participant_effects: source_event.fetch("participantEffects", []), caused_by: source_event["causedBy"],
  }
  imported_event = expected_event.keys.to_h { |key| [key, imported.public_send(key)] }
  verify_equal("event #{source_event['id']}", imported_event, expected_event)
end

selected_relationships.each do |source_relation|
  source_id = source_relationship_id(source_relation)
  imported = world.relationship_for_source(source_id)
  abort "missing imported relationship #{source_id}" unless imported
  verb, reverse, = source_relation["kind"] == "related_to" ?
                     RELATED_CLASSIFICATIONS.fetch(source_id) : RELATION_MAP.fetch(source_relation.fetch("kind"))
  expected_relation = {
    verb: verb,
    source: id_for(reverse ? source_relation.fetch("dst") : source_relation.fetch("src")),
    target: id_for(reverse ? source_relation.fetch("src") : source_relation.fetch("dst")),
    from_year: source_relation.fetch("createdAt"),
    to_year: source_relation["archivedAt"],
    source_metadata: source_relation,
  }
  imported_relation = expected_relation.keys.to_h { |key| [key, imported.public_send(key)] }
  verify_equal("relationship #{source_id}", imported_relation, expected_relation)
end

selected_chronicles.each do |source_chronicle|
  imported = world.chronicle(id_for(source_chronicle.fetch("chronicleId")))
  abort "missing imported chronicle #{source_chronicle['chronicleId']}" unless imported
  imported_text = imported.prose_blocks.map(&:text).join("\n\n").strip
  abort "final content changed for #{source_chronicle['chronicleId']}" \
    unless imported_text == source_chronicle.fetch("finalContent").strip
  context = source_chronicle.fetch("temporalContext")
  source_temporal_description = context.fetch("temporalDescription")
  expected_chronicle = {
    source_id: source_chronicle.fetch("chronicleId"),
    title: source_chronicle.fetch("title"), summary: source_chronicle.fetch("summary"),
    status: :complete, format: source_chronicle.fetch("format").to_sym,
    focus: source_chronicle.fetch("focusType").to_sym,
    narrative_style: source_chronicle.fetch("narrativeStyleId").tr("-", "_").to_sym,
    focal_era: id_for(context.dig("focalEra", "id")), tick_range: context.fetch("chronicleTickRange"),
    temporal_description: TEMPORAL_DESCRIPTION_CORRECTIONS.fetch(
      source_chronicle.fetch("chronicleId"), source_temporal_description
    ),
    source_temporal_description: TEMPORAL_DESCRIPTION_CORRECTIONS.key?(source_chronicle.fetch("chronicleId")) ?
                                   source_temporal_description : nil,
    touched_eras: context.fetch("touchedEraIds", []).map { |id| id_for(id) },
    entrypoint: source_chronicle["entrypointId"] && id_for(source_chronicle["entrypointId"]),
    entity_ids: source_chronicle.fetch("selectedEntityIds", []).map { |id| id_for(id) },
    event_ids: source_chronicle.fetch("selectedEventIds", []),
    relationship_ids: source_chronicle.fetch("selectedRelationshipIds", []),
    role_assignments: source_chronicle.fetch("roleAssignments", []).to_h do |assignment|
      [id_for(assignment.fetch("entityId")), { role: assignment.fetch("role"), primary: assignment["isPrimary"] == true }]
    end,
  }
  imported_chronicle = expected_chronicle.keys.to_h do |key|
    value = imported[key]
    value = Array(value) if %i[touched_eras entity_ids event_ids relationship_ids].include?(key)
    [key, value]
  end
  verify_equal("chronicle fields for #{source_chronicle['chronicleId']}", imported_chronicle, expected_chronicle)
  verify_equal(
    "chronicle annotations for #{source_chronicle['chronicleId']}",
    imported.annotations.map { |note| annotation_signature(note) },
    source_chronicle.fetch("historianNotes", []).map { |note| expected_annotation_signature(note) },
  )
  expected_media = chronicle_media(bundle, source_chronicle, entity_by_id)
  verify_equal(
    "chronicle media for #{source_chronicle['chronicleId']}",
    imported.media_references.map { |reference| media_signature(reference) },
    expected_media.map { |media| expected_media_signature(media) },
  )
end

selected_narratives.each do |source_narrative|
  imported = world.era_narrative(id_for(source_narrative.fetch("narrativeId")))
  abort "missing imported era narrative #{source_narrative['narrativeId']}" unless imported
  imported_text = imported.prose_blocks.map(&:text).join("\n\n").strip
  abort "era narrative content changed for #{source_narrative['narrativeId']}" \
    unless imported_text == source_narrative.fetch("content").strip
  expected_narrative = {
    source_id: source_narrative.fetch("narrativeId"), title: source_narrative.fetch("eraName"),
    status: :complete, era: id_for(source_narrative.fetch("eraId")),
    thesis: source_narrative.fetch("thesis"), tone: source_narrative.fetch("tone"),
    source_chronicle_ids: source_narrative.fetch("sourceChronicles").map do |item|
      id_for(item.fetch("chronicleId"))
    end,
  }
  imported_narrative = expected_narrative.keys.to_h { |key| [key, imported[key]] }
  verify_equal("era narrative fields for #{source_narrative['narrativeId']}", imported_narrative, expected_narrative)
  expected_media = era_narrative_media(bundle, source_narrative, chronicle_by_id)
  verify_equal(
    "era narrative media for #{source_narrative['narrativeId']}",
    imported.media_references.map { |reference| media_signature(reference) },
    expected_media.map { |media| expected_media_signature(media) },
  )
end


selected_pages.each do |source_page|
  imported = world.authored_pages[id_for(source_page.fetch("slug"))]
  abort "missing imported page #{source_page['pageId']}" unless imported
  expected_page = {
    source_id: source_page.fetch("pageId"), title: source_page.fetch("title"),
    summary: source_page.fetch("summary"), status: :complete,
    category: source_page.fetch("title").split(":", 2).first.downcase.to_sym,
    source_status: source_page.fetch("status"),
    linked_entity_ids: source_page.fetch("linkedEntityIds", []).map { |id| id_for(id) },
  }
  imported_page = expected_page.keys.to_h do |key|
    value = key == :title ? imported.title : imported[key]
    value = Array(value) if key == :linked_entity_ids
    [key, value]
  end
  verify_equal("page fields for #{source_page['pageId']}", imported_page, expected_page)
  imported_text = imported.prose_blocks.map(&:text).join("\n\n").strip
  verify_equal("page content for #{source_page['pageId']}", imported_text, source_page.fetch("content").strip)
end

puts "Imported #{manifest['scope']} from #{source}"
manifest.fetch("counts").each { |kind, count| puts "  #{kind}: #{count}" }
puts "  generated files: #{written.length}"
