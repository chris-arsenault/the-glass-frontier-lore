phenomenon :upward_burial do
  name "Upward Burial"
  aka "The Upward Burial"
  summary "Upward Burial is the recurring custody-bound ascent recorded at Thornvault: a sealed, specifically identified holding climbs toward open sky whenever a living custodian authenticates it."
  subkind :physical_phenomenon
  status :complete
  tags :resonance, :archives, :governance, :danger
  prominence :recognized
  trigger "A sealed object or chamber has a specific recorded identity and a living custodian willing to authenticate it"
  effect "Three descending tones sound and the complete holding climbs through surrounding matter toward the nearest open sky without breaking its seal"
  recurrence "The same ascent resumes whenever a living custodian identifies the holding and testifies that its contents remain authentic"
  ending "Movement stops when the seal opens, the contents lose their specific identity, or every living custodian refuses the authentication"
  mitigation "Store vulnerable holdings in open mesh, release fire and flood seals at the first tone, clear the ascent line, or suspend the custody claim"
  anchor_behavior "Follows the authenticated holding through changes of container, owner, and jurisdiction while preserving the same three descending tones"
  medium "Specifically identified sealed holdings and the structure between each holding and open sky"
  content "The authenticated contents, their immediate container, and the seal by which the custody record recognizes the holding"
  hazard "Rising vaults shear floors, pressure shells, bridges, and occupied galleries while preserving dangerous contents better than the structure around them"

  descriptive_identity(
    signs: "Three low tones descend through nearby material, dust falls toward the ceiling, and an authenticated sealed holding begins climbing intact.",
    effects: "The holding carries its seal and immediate container toward open sky through every intervening floor, wall, hull, or rock layer.",
    hazards: "Each living authentication renews an ascent that preserves weapons, toxins, and fragile records while tearing apart the occupied structure above them."
  )

  question "Which Encyclopedia phenomenon type owns the reusable custody-bound ascent instantiated by Upward Burial?", raised: "2026-08-31"

  prose <<~PROSE
    Thornvault archivists named Upward Burial for holdings that remain entombed while the structure above them is displaced. Three tones descend through the nearby material and dust falls toward the ceiling. A sealed case, vault, or chamber then climbs toward the nearest open sky. Stone and metal deform around it until they break; the holding continues through the opening with its seal intact. Fragile contents arrive in better condition than the floors they crossed.

    The ascent follows the holding named by the custody record. Replacing its case preserves the movement when the record still identifies the contents. Moving it changes which open sky lies nearest. A copied chain of signatures remains inert until a living custodian testifies that the named contents are genuine; each renewed authentication strengthens the climb across changes of owner and jurisdiction.
  PROSE
  prose <<~PROSE, section: :culture, heading: "The Thornvault Refusal"
    #{ref :thornvault, "Thornvault"} keeps its lowest affected holdings in open mesh cradles behind doors that seal only during fire or flood. At the first descending tone, gallery crews release those doors, clear the vertical line above the holding, and summon the archivist named on its current chain. Opening the containment prevents a sealed ascent; a refusal from the custodian stops one already moving.

    A refusal is entered beside the old authentication and breaks the holding's standing in later disputes. The archive keeps the material and loses the uninterrupted chain that made it authoritative. Rebuilding that standing requires new witnesses and evidence; repeating the old testimony restarts the ascent with the old hazard.
  PROSE
  prose <<~PROSE, section: :governance, heading: "What Custody Can Move"
    Authentication can be used as force. A sealed weapon proved beneath a fortress climbs through the target. A dangerous archive can surface from a buried city with its records intact. Jurisdictions along the ascent may deny the claimant's rights and still find their floors breaking around a holding whose own chain accepts the testimony.

    A pursued custodian can halt the climb by refusing the thing everyone expects them to protect. The decision preserves the surrounding structure and abandons the record's standing at the same moment. Thornvault case histories therefore treat ascent plans as custody decisions first: the archive must name what it is willing to make unauthenticated before anyone sounds the proof that will move it.
  PROSE

  gm_note :triggered_by, "A living custodian's authentication starts the sealed objective climbing toward open sky; opening it or entering a formal refusal stops the ascent and breaks the chain that gave the holding legal force."
end

relate :rel_upward_burial_manifests_thornvault, :manifests_at, :upward_burial, :thornvault
