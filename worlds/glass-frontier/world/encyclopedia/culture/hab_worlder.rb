encyclopedia :hab_worlder do
  name "Hab-Worlder"
  summary "Hab-Worlders are people raised in sealed ring habitats, where atmosphere, structural maintenance, and mutual obligation are part of ordinary household life."
  kind :culture
  character_role :culture
  origin_blurb "Raised in sealed habs, Hab-Worlders learn to read air, exits, maintenance, and the work shared between neighboring households."
  subkind :cultural_identity
  status :complete
  reviewed "2026-03-18"
  topics :"social-structure", :"ring-hab"
  prevalence :common
  available_globally
  integration "Raised in sealed habitats where atmosphere and structure are communal work"

  descriptive_identity(
    appearance:
      "Spin, ration, and work differ from hab to hab. Contained movement and a " \
      "hand kept close to a rail or fixture remain common habits in crowded " \
      "rooms and on decks whose motion can change.",
    attire:
      "Layered against temperature swings, fitted so nothing snags on " \
      "infrastructure, with pockets and attachment points for tools. Cloth " \
      "in a can is repaired rather than replaced, and the mending is neat by " \
      "upbringing.",
    manner:
      "An unfamiliar room is read through its exits, fans, recyclers, and " \
      "pressure fittings. Shared maintenance and favors are named when " \
      "households arrange work.",
    hospitality:
      "A guest receives air, a bunk, and a share of the table. Many habs add " \
      "the guest to a household task or maintenance rota while the stay " \
      "continues."
  )

  cue "A Hab-Worlder enters an unfamiliar room by checking its exits and moves through open space with contained, economical posture."
  cue "A change in fans, recyclers, or pressure regulators catches a Hab-Worlder's attention before the room's instruments report a fault."
  affordance "Hab-Worlders can read the ordinary sound and arrangement of sealed infrastructure for failing air, blocked escape, or neglected maintenance."
  pressure "A guest's air, bunk, meals, and work enter the household account, and a long stay moves the guest from visitor arrangements onto the local maintenance rota."
  variation "Hab-Worlder communities include musical governments, military outposts, anarchist settlements, and dark habs navigated by hum and memory."
  variation "Some habs maintain rich textile traditions, while others have used the same standardized work clothes for generations."

  prose <<~PROSE
    Hab-Worlder is the shared name for people raised in sealed ring habitats. Each hab supplies its own government, work, light, speech, and household customs. The common inheritance is material: atmosphere has a district ledger, walls carry neighboring households' loads, and the fans and recyclers make an audible record of whether the room is being maintained.

    Children learn those systems as household work. They trace exits, recognize the normal fan cycle, report a changed vibration, and take turns on the tasks their hab assigns to residents. The same education shapes hospitality. Air, a bunk, meals, and the work a guest contributes are parts of one arrangement because all four draw on systems the host households maintain together.
  PROSE
  prose <<~PROSE, section: :values, heading: "Sealed-Hab Habits"
    The exit check is the most visible habit. On entering an unfamiliar room, a Hab-Worlder locates doors, pressure closures, ladders, and the nearest route around a blocked passage. The check may take one glance. In low-spin or damaged sections it continues as a hand kept close to a rail and a refusal to leave bags across a path.

    Air has a sound. Fans, recyclers, and pressure regulators establish the room's ordinary cycle; a bearing beginning to rasp or a fan falling out of sequence is often heard before an instrument raises an alarm. On a first surface night, the absence of that mechanical cycle can register as a room whose air system has stopped.

    Maintenance crosses household walls. One family may keep the air plant while another maintains the pressure doors and a third holds the repair stock. Work exchanges and guest duties follow those dependencies, naming who keeps each shared system running and who owes the next turn.
  PROSE
  prose <<~PROSE, section: :values, heading: "Hab Differences"
    Government, worship, work, lighting, and names remain local. One hab makes civic decisions through structured improvisation, another follows military command, and another uses consensus. Some maintain rich glasslight and textile industries. Others ration light and navigate dark decks by resonance hum and remembered fixtures.

    Names carry the same local range. Compact forms travel well through crowded channels, while deck names, household tools, earned work, and surviving lock numbers supply different second elements from hab to hab. #{encyclopedia_ref :names_in_kaleidos, "Names in Kaleidos"} records the broader pattern; #{encyclopedia_ref :kesh_challenge_names, "Kesh Challenge Names"} and #{encyclopedia_ref :span_names, "Span Names"} show two practices that grew from particular hab work.
  PROSE
  prose <<~PROSE, section: :aesthetics, heading: "Clothing and Movement"
    Hab clothing is commonly layered for temperature variation, fitted clear of exposed infrastructure, and supplied with attachment points for tools. Cloth remains in use through repeated repair. A textile-rich hab makes those repairs decorative; a standardized outpost matches thread and panel to the issued garment.

    Crowded rooms and changing deck motion favor contained movement. People raised under those conditions often keep elbows and carried objects close, use fixtures without looking for them, and leave clear space around a hatch. The habits remain visible in broad surface rooms even after the need has changed.
  PROSE
  prose <<~PROSE, section: :perception, heading: "Using the Label"
    Surface speech uses Hab-Worlder as the broad category for anyone raised in a ring habitat. Within the habs, people usually lead with the settlement, deck, household, or work group that identifies their particular systems and obligations. Some use the broad label for shared politics and trade; others supply it only when speaking to surface institutions.

    Bloom displacement gave the label another public use. People from different lost habs share the work of rebuilding sealed households without the environment that organized them. The Displacement Council draws heavily from that population, and at its offices Hab-Worlder often identifies a displacement history before it identifies a present home.
  PROSE
end
