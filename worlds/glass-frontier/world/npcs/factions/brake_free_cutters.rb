faction :brake_free_cutters do
  name "Brake Free Cutters"
  summary "The Brake Free Cutters are family mining crews that pool claims, tugs, rescue stores, and cutting time around Brake."
  playable_as :allegiance
  origin_blurb "Independent cutters pool claims, rescue stores, tools, and hard-won authority around Brake."
  subkind :mutual_aid
  type_of :working_mutuals
  founded 2336
  tags :salvage, :trade, :"ring-hab", :materials
  prominence :marginal
  status :complete
  omit_facts :leaders, :predecessors

  descriptive_identity(
    ideology:
      "Family crews own their vessels and tools outright, but a claim " \
      "belongs to whoever marked it and told Brake — buoys set, assay cuts " \
      "made, notice on record. Since Shardfall they also hold that no " \
      "claim is worth closing a route home, and that a debris field near " \
      "enough to threaten Brake cannot be abandoned to a stronger company.",
    methods:
      "The common board records every claim and assigns the pooled tugs, " \
      "watches, rescue stores, and cutting time needed to hold it safely. " \
      "Dangerous hulls get towed back to Brake's cutting lots rather than " \
      "opened where they lie, and nobody makes a linked cut inside an " \
      "inhabited field or fires a weapon across a marked work line.",
    presence:
      "Mining families on their own tugs, the oldest wearing mismatched " \
      "plates cut from seized Drossmark rigs — each drilled through its " \
      "control channels before installation, recognizable on sight to " \
      "anyone who reads salvage marks. Ashore they are the claim board and " \
      "the permanent rescue stores beside Brake's capture lanes.",
    attitude:
      "Newcomers come in through the board: register the claim, read the " \
      "warnings kept beside the Shardfall record, and the shared equipment " \
      "follows. Toward a company that plants rigs on a marked field they " \
      "concede nothing — they lacked the ships to force Drossmark out and " \
      "stayed anyway."
  )

  prose <<~PROSE
    The Brake Free Cutters are family mining crews that pool tugs, claim watches, rescue stores, and cutting time around #{ref :brake, "Brake"}. Each crew owns its vessel and tools. A common board records claims and assigns the shared equipment needed to hold them safely.

    The Cutters marked the intact-grade debris field before #{ref :shardfall, "Shardfall"}. Their claim buoys, assay cuts, and notice to Brake all predated the arrival of #{ref :drossmark_industries, "Drossmark Industries"}. They lacked the ships to force the company out and refused to abandon a field close enough to threaten their home.
  PROSE

  prose <<~PROSE, section: :history, heading: "After Shardfall"
    Nine Cutters died in the battle and cascade. Surviving crews spent the next three years stabilizing the field with single-vessel cuts. The last intact-grade load paid for Brake's pressure repairs, the dead crews' household shares, and permanent rescue stores at the capture lanes.

    The common board kept the Shardfall claim record open after extraction ended. New members read its warnings before receiving a shared tug: no linked cut inside an inhabited field, no weapon discharge across a marked work line, and no claim worth closing a route home.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Present Day"
    The Cutters now work smaller claims and bring difficult hulls into Brake's cutting lots. Their oldest tugs carry mismatched plates from the Drossmark rigs they helped seize. Each plate is drilled through the control channels before installation.
  PROSE

  gm_note :appears, "Salvage work around #{ref :brake} runs into the common board, which records who holds which claim and assigns the pooled tugs, watches and cutting time. A crew that wants shared equipment registers the claim first."
  gm_note :triggered_by, "Borrowing a Cutters tug begins with reading the warnings kept beside the #{ref :shardfall} claim record: no linked cut inside an inhabited field, no weapon discharge across a marked work line, no claim worth closing a route home."
  gm_note :complicates, "Their oldest tugs wear mismatched plates cut from #{ref :drossmark_industries} rigs, each drilled through its control channels before installation and recognizable on sight to anyone who reads salvage marks."
end

relate :rel_brake_free_cutters_headquartered_brake, :headquartered_in, :brake_free_cutters, :brake, since: 2336 do
  prose "The common claim board and rescue stores occupy rooms beside Brake's capture lanes."
end
relate :rel_brake_free_cutters_operate_shear, :operates_in, :brake_free_cutters, :the_shear, since: 2336 do
  prose "Member crews work local claims and tow dangerous salvage back to Brake."
end
relate :rel_brake_free_cutters_supply_brake, :supplies, :brake_free_cutters, :brake, since: 2336 do
  prose "Their graded salvage feeds Brake's repair yards and cutting lots."
end
relate :rel_brake_free_cutters_participated_shardfall, :participated_in, :brake_free_cutters, :shardfall do
  prose "The Cutters defended their prior claim, pulled damaged vessels toward Brake, and later stabilized the field."
end
