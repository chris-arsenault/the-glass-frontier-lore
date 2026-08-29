phenomenon :upward_burial do
  name "The Upward Burial"
  summary "The Upward Burial drives sealed and authenticated holdings toward open sky for as long as someone claims custody of them."
  type_of :directed_matter_migration
  subkind :physical_phenomenon
  status :complete
  tags :resonance, :archives, :governance, :danger
  prominence :recognized
  trigger "A deliberately sealed object or chamber is given a specific identity and held under an asserted chain of custody"
  effect "The claimed holding climbs through floors, walls, rock, and surrounding structures toward the nearest open sky"
  recurrence "Movement resumes whenever a living custodian identifies the holding and testifies that it remains authentic"
  ending "The holding stops when no living person claims custody or will testify to its authenticity"
  mitigation "Open the containment, make the contents genuinely anonymous, or break the custody claim before movement reaches occupied structure"
  anchor_behavior "Follows the named holding through changes of container and owner; all manifestations answer the same three descending archive tones"
  medium "Named sealed holdings and the matter between them and open sky"
  hazard "Rising vaults shear occupied structures, expose dangerous contents, and force custodians to choose between safety and authenticity"

  descriptive_identity(
    signs: "Three low archive tones descend through nearby material, dust falls upward, and a sealed holding begins rising without opening or crushing its contents.",
    effects: "Any specifically named object or chamber under active custody moves toward the nearest open sky, carrying its seal and immediate container through intervening matter.",
    hazards: "The ascent tears floors, bridgework, pressure shells, and inhabited decks while every formal authentication gives the holding new force."
  )

  prose <<~PROSE
    The Upward Burial begins with three descending tones and dust falling toward the ceiling. A sealed case, vault, or chamber then climbs toward the nearest open sky. Stone and metal move around it until they can no longer carry the strain, after which the holding rises through the break it has made. The seal remains intact. Fragile contents arrive in better condition than the structure they crossed.

    The phenomenon follows identity and custody. Replacing a case does not help if the record still names what the new case contains. Moving a holding only changes the sky it rises toward. A custodian who states that the object is genuine makes the movement stronger; a formal chain of signatures can keep it active after the object has crossed several jurisdictions.
  PROSE
  prose <<~PROSE, section: :operations, heading: "The Thornvault Refusal"
    #{ref :thornvault, "Thornvault"} keeps its lowest affected holdings in open mesh cradles, behind doors that seal only during fire or flood. When a vault begins to rise, archivists can stop it by refusing authentication. That decision does more than suspend movement. An unattributed record loses the very custody that gives it authority in later disputes.

    The same choice makes the Upward Burial usable. A sealed weapon can be driven through a fortress by proving its custody beneath the target. A dangerous archive can be made to surface from a buried city. A pursued custodian can halt the ascent by denying the thing everyone expects them to protect, then recover its standing only by building a new chain of evidence from what survives.
  PROSE

  gm_note :triggered_by, "Authenticating a sealed objective makes it start climbing toward open sky through the intervening structure; denying it stops the ascent and destroys the legal value everyone came to secure."
end

relate :rel_upward_burial_manifests_thornvault, :manifests_at, :upward_burial, :thornvault
