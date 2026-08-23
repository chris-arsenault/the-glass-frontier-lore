# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

artifact :artifact_deep_map do
  title "The Hollows Chart"
  source_id "artifact_deep_map"
  subkind :tome
  summary "A mining survey map recovered from the Drowned Ledge, its edges water-damaged and its deeper sections annotated in a hand that Keeper Hollows doesn't recognize—though it's clearly his own. The chart shows the official tunnel network in standard Nightshelf notation, but below a certain depth the markings change: geometric symbols, depth measurements in units no guild uses, and a large chamber labeled only with a glyph that makes readers' eyes water. Hollows found it in his pack after the flooding, though he has no memory of drawing it. It acts as a call that something vast can hear and answer; under aurora-light, it reveals routes to things that shouldn't be found."
  status :complete
  prominence :forgotten
  tags :nightshelf, :magic
  source_kind "artifact"
  source_subtype "tome"
  source_culture "nightshelf"
  source_status "destroyed"
  source_prominence 0
  source_tags({"secretive" => true, "mystical" => true})
  source_created_at 0
  source_era nil
  cultural_origin "Nightshelf"
  world_status "destroyed"
  first_recorded 0

  prose(<<~'CANONICAL_PROSE', origin: :published)
    ## Physical Description
    
    A mining survey map recovered from the Drowned Ledge — the Nightshelf outpost that flooded after its deepest tunnel breached seawater three generations ago. The parchment is water-warped, its edges soft, ink bleeding into dark haloes. The upper sections are unremarkable: standard Nightshelf tunnel notation in the methodical hand of a career surveyor.
    
    Below a jagged line — roughly the depth where known routes end — the notation transforms. Geometric symbols, nearly architectural in precision, rendered in an ink that behaves wrongly under light. Depth measurements use units no guild recognizes. In the lowest depicted chamber, a single glyph is not written but *impressed* through the parchment, as though the instrument pierced it entirely. Readers consistently report involuntary lacrimation. Some describe a sensation of being observed.
    
    ## Provenance
    
    Keeper Hollows, the last miner to escape the Drowned Ledge, found the chart in his pack after the flooding. The handwriting in the deeper sections is demonstrably his own. He has no memory of drawing it, nor can he account for the frostburn scarring on his flippers or the days missing from his recollection of the event.
    
    The Midnight Claws — the Nightshelf's dominant enforcement faction — offered substantial payment on three occasions. Hollows refused each time.
    
    ## Properties and Significance
    
    The chart functions as more than cartography. Under aurora-light, it reveals routes extending well below mapped depths — routes to locations the summary record describes, with restraint I will honor, as "things that shouldn't be found." When pressed against corruption-scarred ice, the geometric symbols appear to interact with the surface; both chart and ice produce luminescence consistent with mutual recognition.
    
    During the breach at the Fissured Smelt — a Nightshelf tavern and gathering point — the Wake-Singers, an orca faction conducting deep-ice blood-rituals, responded to the chart as though it were a signal. The subsequent assault resulted in the Smelt's abandonment and the awakening of something in the depths below.
    
    Hollows sleeps with the chart against his chest. Fellow miners at the Glow-Fissure report that his breathing changes during sleep — adopting rhythms they cannot identify.
  CANONICAL_PROSE
  annotation "note_1771578012764_0", anchor: "Depth measurements use units no guild recognizes", text: "The foundation ice below stratum fourteen contains geometric measurement impressions that predate penguin civilization by geological spans. I have catalogued eleven instances across my career. The base system is non-decimal — consistent with what the chart depicts, inconsistent with every Nightshelf guild notation I have encountered in four decades. The conditions described here belong to the impression stratum: the era before us. Something older dictated; Hollows transcribed. I should have named the era in the main text. I was, I think, reluctant to commit that sentence to the official record. A familiar species of cowardice — I recognize the shape of it now.", type: :temporal, display: :full
  annotation "note_1771578012764_1", anchor: "restraint I will honor", text: "Three words doing more structural work than the rest of the paragraph. Some things, once written plainly in an encyclopedia entry, become instructions.", type: :commentary, display: :popout
  annotation "note_1771578012764_2", anchor: "responded to the chart as though it were a signal", text: "Causal direction matters. The Fissured Smelt breach followed standard orca tactical geometry — I described it in my annotation on the assault chronicle. If the Wake-Singers were already targeting that location through their own deep-ice communion, the chart's activation during the attack may be correlation, not causation. Or — and I like this reading less — both chart and orca were responding to the same call from below, and neither was the sender.", type: :skepticism, display: :full
  image "img_artifact_deep_map_1767848615535", role: :entity, url: "https://theiceremembers.com/raw/project_1765083188592/img_artifact_deep_map_1767848615535"
end
