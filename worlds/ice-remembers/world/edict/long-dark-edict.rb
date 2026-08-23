# Generated from the pinned public Canonry Viewer bundle.
# Source SHA-256: c667f22ee825d7154d8f7fc78e65b1f69e045eb7b09e5c775aea06001a114e09
# Regenerate with lorecraft/tools/import_ice_remembers.rb; edit canon only after migration.

edict :long_dark_edict do
  title "Long-dark Edict"
  source_id "long-dark-edict"
  subkind :law
  summary "A charter written on pressed ice that granted E'frostlings exclusive trading rights in Aurora Stack during the Great Thaw, now a palimpsest of amendments commemorating every catastrophe that followed—each layer of new edicts carved over the old, making the original text nearly illegible. The Edict has grown to at least fifty-eight amendments, each addressing a crisis created or exacerbated by the amendment before it."
  status :complete
  prominence :mythic
  tags :aurora_stack, :trade, :governance
  source_kind "rule"
  source_subtype "law"
  source_culture "aurora-stack"
  source_status "subsumed"
  source_prominence 4.794999999999999
  source_tags({"trade" => true, "political" => true, "organized" => true, "culture" => "aurora-stack", "libertarian" => true})
  source_created_at 3
  source_era "the-great-thaw"
  cultural_origin "Aurora Stack"
  world_status "subsumed"
  first_recorded 3

  prose(<<~'CANONICAL_PROSE', origin: :published)
    ## Origin and Original Purpose
    
    A charter inscribed on pressed ice, originally granting E'frostlings — Aurora Stack's dominant merchant faction — exclusive rights to move aurora-crystals through the Stack's markets during the Great Thaw. The Edict was authenticated by the Directrix Mirror, a damaged artifact of divination, and signed by Gilt-Hand Yeaiu qi'Gleam, then the faction's leading figure. Its signing also formalized the peace following The Vum∴tenebra, an experimental catastrophe whose remnants were sealed beneath Terrace Momiou as a condition of the agreement.
    
    The original text is no longer legible. This is not metaphor.
    
    ## Accumulation
    
    The Edict is a palimpsest. Each crisis in Aurora Stack's history added new amendments carved over the old, until the charter became less a legal document than a geological record of institutional failure.
    
    The named amendment sequence, so far as the ice and the surviving carve-marks can reconstruct it:
    
    - **Thanksgiving** — scratched in during the Clever Ice Age after E'frostlings' warehouses burned and the colony nearly starved
    - **Schism** — carved deep when the Nightshelf sealed their tunnels in protest during Schism (frost-wailed)
    - **Aurora-touched**, **Darkening**, **Collapse**, **Gilding**, **Thaw** — each commemorating the occurrence whose name it bears
    
    By Amendment Twenty-Six, the center of the stone was full — forty-seven layers of text over text. Subsequent amendments were carved into the margins with chisels fine enough to split snowflakes. Past Amendment Forty-Three, the text requires a magnifying lens of aurora-crystal to read. The Edict now subsumes Dawn-Marked, the unified legal code enacted during the Orca Incursion, folding even that framework into its accumulating mass.
    
    The Council of Luminaries stopped voting on amendments during the Frozen Peace. Merchants and tunnel-dwellers negotiated directly over the ice-sheet. The text rewrote itself through action rather than consensus.
    
    ## The Recursive Problem
    
    The Edict has grown to at least fifty-eight amendments. Its constraints have become self-generating:
    
    | Amendment | Provision | Consequence |
    |---|---|---|
    | 37 | Stockpile count of aurora-crystals | Never reconciled with disbursement records |
    | 38 | Emergency crystal disbursements | Depleted the stockpile Amendment 37 was counting |
    | 39 | Fire-core rationing by population density | Drove residents from corruption-touched lower terraces, reducing allocation to those terraces, accelerating corruption |
    | 42 | Adjusted for projected migration | Addressed Amendment 39's failures using Amendment 39's framework |
    | 43 | Cleansing protocols requiring aurora-crystals | Required crystals already spent under Amendment 38 |
    | 56 | Reclassified corruption-Touched as protected labor; assigned to lower terraces | Increased lower-terrace population, shifting fire-core allocation away from upper terraces under the formula meant to stabilize them |
    
    The colony's official designation has held at *thriving*. The form to change it requires three council signatures. One council member walked into the ice during the Darkening without anyone filing the paperwork to replace him. The arithmetic does not work. No one has amended the arithmetic for requiring three signatures, though I expect Amendment Fifty-Nine will address it by creating a new problem.
    
    ## Current Status
    
    E'frostlings still operates under the Edict. No faction has proposed replacing it, in part because no one can agree which of its fifty-eight layers constitutes the binding version — so all of them hold. No one alive remembers what the original words were.
  CANONICAL_PROSE
  annotation "note_1771577237709_0", anchor: "authenticated by the Directrix Mirror, a damaged artifact of divination", text: "A cracked oracle blessing the birth of a document that would render itself unreadable within a generation. One does appreciate the symmetry.", type: :commentary, display: :popout
  annotation "note_1771577237709_1", anchor: "signed by Gilt-Hand Yeaiu qi'Gleam, then the faction's leading figure", text: "\"Then\" is doing heroic work here. Gilt-Hand later broke from E'frostlings entirely to found Holdborn (ice-thresh), making her simultaneously the Edict's authenticating signatory and the faction's defining deserter. The most important trade charter in Aurora Stack history bears the name of the one person who decided the faction it empowered was not worth remaining in. I could have said so in the main text. I find it funnier in the margins.", type: :correction, display: :full
  annotation "note_1771577237709_2", anchor: "Reclassified corruption-Touched as protected labor; assigned to lower terraces", text: "\"Protected.\" The lower terraces are the corruption-touched terraces. Amendment 39 already stripped their fire-core allocation. Amendment 56 moved people *into* them and called it a classification upgrade. This is not protection. This is disposal with a filing system.", type: :commentary, display: :full
  annotation "note_1771577237709_3", anchor: "Its constraints have become self-generating", text: "The causal chain in the table is tidier than the carve-marks support. Amendments 38 and 39 occupy the same ice-layer — likely contemporaneous rather than sequential. I imposed the narrative. It was more entertaining this way.", type: :skepticism, display: :popout
  image "img_long-dark-edict_1767851481816", role: :entity, url: "https://theiceremembers.com/raw/project_1765083188592/img_long-dark-edict_1767851481816"
end
