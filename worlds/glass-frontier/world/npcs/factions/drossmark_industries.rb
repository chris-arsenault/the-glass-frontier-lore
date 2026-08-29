faction :drossmark_industries do
  name "Drossmark Industries"
  summary "Drossmark Industries was a mid-drift extraction company whose linked heavy cutting arrays caused the Shardfall cascade at Brake."
  subkind :company
  type_of :company
  founded 2329
  tags :salvage, :trade, :materials, :military
  prominence :marginal
  status :complete
  omit_facts :leaders, :headquarters, :predecessors

  descriptive_identity(
    ideology:
      "Speed was the product. A buyer paid for a graded load and a " \
      "delivery window; which claim was cut, with what equipment, and at " \
      "what loss was Drossmark's business alone.",
    methods:
      "Its heavy arrays fixed several debris masses into one temporary " \
      "field and drew material through all of them without moving the " \
      "carrier between cuts — quick in open Shear, and passing vibration " \
      "into every mass the array held. The linked rigs answered to one " \
      "command, which could keep them all cutting after local crews had " \
      "tried to stop them.",
    presence:
      "Black hull plates bearing three white cuts, a mark that outlasted " \
      "the company on loaders still working in private yards. Beyond the " \
      "hulls it survives as a warning: two extraction frames repurposed as " \
      "sorting tables with their power paths cut, and a Drossmark panel " \
      "kept in inspection books as the standard picture of linked control.",
    attitude:
      "Other people's claims and warnings were priced, not honored. At " \
      "Shardfall it entered a field the Brake Free Cutters had already " \
      "marked, fought to hold it, and went on extracting after hab " \
      "instruments warned that the arrestors were answering its rigs."
  )

  prose <<~PROSE
    Drossmark Industries was a mid-drift extraction company built around heavy ringglass cutting arrays. Its rigs fixed several debris masses into one temporary field and drew material through them without moving the carrier between cuts. The method worked quickly in open Shear and transferred vibration across every mass held by the array.

    The company sold speed. A buyer paid for a graded load and a delivery window; Drossmark chose the claim, equipment, and losses needed to meet both. Its black hull plates carried three white cuts, a mark still visible on old loaders in private yards.
  PROSE

  prose <<~PROSE, section: :history, heading: "Shardfall and Dissolution"
    At #{ref :shardfall, "Shardfall"} in 2348, Drossmark ran three linked arrays inside a debris field claimed by the #{ref :brake_free_cutters, "Brake Free Cutters"}. The field lay close enough to the neighboring hab for the extraction tone to enter its kinetic arrestors. Drossmark continued cutting after hab instruments warned that the arrestors were answering the rigs.

    The resulting cascade killed workers and residents. Ports refused Drossmark loads, insurers withdrew from its rigs, and creditors took the serviceable ships. The company dissolved in 2359. Its owners did not establish a successor.
  PROSE

  prose <<~PROSE, section: :legacy, heading: "What Remains"
    The affected hab retains two Drossmark extraction frames with their power paths physically cut. Crews use the housings as stationary sorting tables and leave the black plates exposed. Current inspection books still illustrate linked controls with a Drossmark panel because one command could keep every array running after local crews tried to stop them.
  PROSE

  gm_note :appears, "The black plate with three white cuts still shows on working loaders in private yards, because the hulls outlasted the company by decades. Asking a yard owner where the hull came from is how most people first hear the name."
  gm_note :triggered_by, "Proposing to link several cutting arrays under one control gets the Drossmark panel produced from an inspection book. It remains the standard illustration of a command that kept every rig running after local crews had tried to stop them."
  gm_note :complicates, "Two frames survive at the affected hab as sorting tables with their power paths physically cut. An offer to restore one for extraction has to be made to the people who cut them."
end

relate :rel_drossmark_headquartered_keelward, :headquartered_in, :drossmark_industries, :keelward, since: 2329, till: 2359 do
  prose "Drossmark kept its contracts, finance office, and receiving yard at Keelward."
end
relate :rel_drossmark_operated_shear, :operates_in, :drossmark_industries, :the_shear, since: 2329, till: 2359 do
  prose "Its heavy rigs worked high-volume claims across the mid-drift Shear."
end
relate :rel_drossmark_participated_shardfall, :participated_in, :drossmark_industries, :shardfall do
  prose "Drossmark entered the claimed field with heavy arrays, fought to hold them, and continued extraction until the cascade reached the hab."
end

moment :drossmark_dissolved, year: 2359, of: :drossmark_industries do
  summary "Port refusals, lost insurance, and creditor seizures dissolved Drossmark Industries in 2359."
  prose "Port refusals, lost insurance, and creditor seizures ended Drossmark Industries in 2359."
  effects { set :drossmark_industries, standing: :dissolved }
end
