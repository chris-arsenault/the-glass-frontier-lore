# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

chronicle :chronicle_1770691847845_9jqnyt do
  source_id "chronicle_1770691847845_9jqnyt"
  title "Kelm's Dark Verses"
  summary "Assessor Yunchouheixei collected five rhyming songs sung by children of the Aurora Stack and Nightshelf tunnel communities in Cycle 847, documenting their oral traditions without alteration. The rhymes—'The Donning Count,' 'The Flag-Post Warning,' 'Gleamy and Zhoo,' 'The Steam Song,' and 'Kelm's Counting'—contain cryptic warnings about dangers like mist, cold, and dwindling resources, with 'Kelm's Counting' being particularly significant as children stamp their feet intensely during its performance, though the identity of Kelm remains unknown to the tunnel-mothers. The children sing these verses more frequently during cold weeks, and adults notably do not discourage the practice."
  status :complete
  format :document
  focus :single
  narrative_style :nursery_rhymes
  focal_era :the_great_thaw
  ticks from: 2, to: 11
  temporal_description "a short episode during the The Great Thaw (9 ticks)"
  touched_eras :the_great_thaw
  entrypoint :dawn_naong
  entities :dawn_naong, :loc_forgotten_shore, :loc_still_pools, :e_frostlings, :the_rofundis_rupt
  events "act-seize_control:e-frostlings-11", "act-spread_corruption:loc_forgotten_shore-2", "act-spread_corruption:loc_veil_vents-5", "tpl-guild_establishment-3"
  relationships "loc_forgotten_shore:loc_still_pools:adjacent_to", "loc_forgotten_shore:loc_still_pools:contained_by", "loc_still_pools:loc_forgotten_shore:corrupted_by", "dawn-naong:loc_still_pools:adjacent_to", "loc_still_pools:dawn-naong:adjacent_to", "e-frostlings:dawn-naong:controls", "dawn-naong:loc_still_pools:corrupted_by"
  roles({dawn_naong: {role: "rhyme-subjects", primary: true}, loc_forgotten_shore: {role: "rhyme-subjects", primary: false}, loc_still_pools: {role: "rhyme-subjects", primary: false}, e_frostlings: {role: "cultural-origin", primary: false}})

  prose(<<~'CANONICAL_CHRONICLE', origin: :published)
    # Rhymes of the Ice-Steps and Tunnels
    *Collected by Assessor Yunchouheixei, Cycle 847*
    
    The children of the Aurora Stack sing these on the frost-steps below the spire-yards, and the tunnel-chicks of the Nightshelf stamp them into the dark. I collect them as I find them—chalked on ice-walls, clapped between fledglings, murmured at sleep-hour in the warren-berths. I write what they sing. I do not correct them.
    
    ---
    
    **I. The Donning Count**
    
    Ten crystals in the Donning vault,
    Nine came out with copper-fault,
    Eight won't hold the aurora-light,
    Seven clouded overnight,
    Six, five, four—the ledger's wrong—
    Count them down and count them gone.
    
    ---
    
    **II. The Flag-Post Warning**
    
    Don't go past the rotten flag
    Where the mist rolls off the crag,
    Count to three and hold your breath—
    Four is fog and five is death.
    The mist knows the way but you don't.
    Come back now. You won't. You won't.
    
    ---
    
    **III. Gleamy and Zhoo**
    
    Yow-yow Gleamy, Zhei-zhei-zhoo,
    Built a terrace, broke it too,
    Frost-frost-frostling, grab and hold,
    Sold the ice and bought the cold—
    Yow walked out and Zhei walked through,
    Greedy as a frost-ling-oo!
    
    ---
    
    **IV. The Steam Song**
    
    Warm and warm and warm and wrong,
    Sleep now, little one, sleep long,
    Steam will hide you, steam will hold,
    Keep you safe from all the cold.
    But if the steam should thin away—
    Hush now. Hush now. Dream and stay.
    
    ---
    
    **V. Kelm's Counting**
    
    Ten fire-cores on the shelf,
    Nine to warm your little self,
    Eight—the humming stops below,
    Seven, six—the cold winds blow,
    Five, four, three—the dark comes in,
    Two, one, none for little Kelm.
    Stamp your feet and start again!
    
    ---
    
    *Note:* The Nightshelf chicks stamp both feet on "none"—hard, five or six strikes, until someone slips on the ice. On the Stack, they only clap. I have asked the tunnel-mothers who Kelm was. They shake their heads. The children sing it louder in cold weeks. The adults do not stop them.
  CANONICAL_CHRONICLE
  annotation "note_1771574572977_0", anchor: "Don't go past the rotten flag\nWhere the mist rolls off the crag", text: "The 'rotten flag' is the Aurora Stack cartographer's abandoned survey marker at the Forgotten Shore — Still Pools residents repurposed it to mark where the corruption-mists thicken. So the most accurate perimeter map of an active corruption zone exists not in any archive but in a children's counting game. 'Four is fog and five is death' encodes real taint-exposure mechanics: the Forgotten Shore sits squarely in the Still Pools corruption network, and prolonged contact produces the Touched. The fledglings have the topology exactly right. I find this funnier than I should.", type: :commentary, display: :full
  annotation "note_1771574572977_1", anchor: "Built a terrace, broke it too", text: "Terrace Momiou, Gilt-Hand Yeaiu's split, the whole mercantile collapse — six lines. 'Yow walked out' is the Holdborn defection; 'Zhei walked through' is the Covens' seizure. Children have produced a more structurally honest account of E'frostling factional history than anything in the Council's official retrospectives. Shorter, too.", type: :skepticism, display: :popout
  annotation "note_1771574572977_2", anchor: "Ten fire-cores on the shelf", text: "Fire-cores as a named domestic commodity — counted on shelves, depleted by children — belongs to the Clever Ice Age, not the Great Thaw. The focal era predates standardized fire-core distribution by sixty ticks at minimum. Source contamination from a later stratum, or evidence that Yunchouheixei's 'Cycle 847' collection pulled from multiple periods without distinguishing them. Either way, little Kelm's shelf is anachronistic.", type: :temporal, display: :popout
  image "img_chronicle_1770691847845_9jqnyt_1772878746677", role: :cover, url: "https://theiceremembers.com/raw/project_1765083188592/img_chronicle_1770691847845_9jqnyt_1772878746677"
  image "img_dawn-naong_1772879579597", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_dawn-naong_1772879579597", anchor: "Ten crystals in the Donning vault", anchor_index: 444, caption: "Children's rhyme chalked on the Aurora Stack's frost-steps", size: :medium, reference_id: "imgref_1772835721362_0"
  image "img_dawn-naong_1772879546202", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_dawn-naong_1772879546202", anchor: "The Flag-Post Warning**\n\nDon't go past the rotten flag\nWhere the mist rolls off the crag,\nCount to three and hold your breath—\nFour is fog and five is death.", anchor_index: 657, caption: "The warning-post at the mist boundary", size: :large, reference_id: "imgref_1772835721362_1"
  image "img_dawn-naong_1772879641346", role: :inline, url: "https://theiceremembers.com/raw/project_1765083188592/img_dawn-naong_1772879641346", anchor: "Stamp your feet and start again", anchor_index: 1587, caption: "The Nightshelf children's counting ritual in the deep tunnels", size: :medium, reference_id: "imgref_1772835721362_2"
end
