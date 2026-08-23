# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

npc :manual_npc_1771050672150_6zpes8 do
  title "Assessor Yunchouheixei"
  source_id "manual_npc_1771050672150_6zpes8"
  subkind :mayor
  summary "An Aurora Stack assessor who collects children's nursery rhymes from both the Stack and the Nightshelf, transcribing oral traditions that encode colony history."
  status :complete
  prominence :marginal
  tags :aurora_stack
  source_kind "npc"
  source_subtype "mayor"
  source_culture "aurora-stack"
  source_status "alive"
  source_prominence 1
  source_tags({})
  source_created_at 1771050672150
  source_era "the-great-thaw"
  cultural_origin "Aurora Stack"
  world_status "alive"

  prose(<<~'CANONICAL_PROSE', origin: :published)
    An Aurora Stack assessor whose Cycle 847 collection catalogues children's nursery rhymes from both the Stack and the Nightshelf, transcribed without correction or editorial amendment. Yunchouheixei records the rhymes as found — chalked on ice-walls, clapped between fledglings on the frost-steps, murmured at sleep-hour in warren-berths — preserving performance context alongside text.
    
    The five documented songs (*The Donning Count*, *The Flag-Post Warning*, *Gleamy and Zhoo*, *The Steam Song*, and *Kelm's Counting*) encode real colony histories: trade vaults where the numbers do not add up, fire-cores counting down to zero, fog-shores that swallow memory. Yunchouheixei notes with clinical precision that Stack fledglings clap while Nightshelf tunnel-chicks stamp both feet on the ice until someone slips — particularly during *Kelm's Counting*, whose subject the tunnel-mothers claim not to recognize.
    
    The children sing these verses more frequently during cold weeks. Adults do not discourage the practice. Yunchouheixei offers no commentary on either observation.
  CANONICAL_PROSE
  annotation "note_1771593914248_0", anchor: "Kelm's Counting*, whose subject the tunnel-mothers claim not to recognize", text: "They recognize it. The stamping game traces a path — seventeen steps, then a pause, then the count restarts from a number that is not one. I have matched the sequence to the perimeter of an active corruption zone. The tunnel-mothers know what their children are mapping with their feet. They let them sing because the singing is how the map survives. When the adults who drew it are gone, some fledgling will still be stamping the route into ice, not knowing why, and it will be enough.", type: :commentary, display: :full
  annotation "note_1771593914248_1", anchor: "Yunchouheixei offers no commentary on either observation", text: "Neither do I.", type: :commentary, display: :popout
  image "img_manual_npc_1771050672150_6zpes8_1772874762600", role: :entity, url: "https://theiceremembers.com/raw/project_1765083188592/img_manual_npc_1771050672150_6zpes8_1772874762600"
end
