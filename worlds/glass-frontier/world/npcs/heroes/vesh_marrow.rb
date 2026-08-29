npc :vesh_marrow do
  name "Vesh Marrow"
  summary "Vesh Marrow was the Hand of the Bloom Coalition from its unified command in 2380 until its dissolution in 2396."
  subkind :official
  born 2358
  occupation "Retired Hand of the Bloom Coalition and adviser on Accord emergency charters"
  jurisdiction "Cross-faction emergency command"
  type_of :humans
  belongs_to :culture, :sitharian_culture
  descriptive_identity disposition:
    "Marrow meets a request for emergency authority with three questions: " \
    "who can end it, which records stay public, and what happens to " \
    "whoever refuses an order. His weight arrives as annotations in the " \
    "margins of a draft, not from a chair or a seat."
  tags :governance, :diplomacy, :resonance, :rebuilding
  prominence :recognized
  status :complete

  prose <<~PROSE
    Vesh Marrow was the Hand of the #{ref :bloom_coalition, "Bloom Coalition"} from its first unified command in 2380 until its dissolution in 2396. He entered the Bloom response as a junior cordon operator assigning landing windows at the outer #{ref :pyre, "Pyre"} cordon. Three months of clear orders, accurate loss counts, and refusals to conceal shortages put him in charge of the factions that had supplied him.

    Marrow held the office after the physical cordons passed to the #{ref :displacement_council, "Displacement Council"}. His work then moved to supply guarantees and disputes between member factions. Every Coalition order carried an end condition and the person responsible for reversing it. The practice survived in both the Council and the #{ref :tempered_accord, "Tempered Accord"}.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Marrow lives at #{ref :accord_shore, "Accord Shore"} and advises delegations that want temporary authority during a crisis. He asks who can end the authority, which records will remain public, and what happens to anyone who refuses an emergency order. He does not hold an Accord seat and declines offers to chair hearings.

    The #{ref :the_corridor_disputes, "Corridor Disputes"} have brought him back into regular sessions. Several delegates want one office to direct traffic when a corridor closes. Marrow supports a named controller for each closure and rejects a permanent command over the whole route network. His marked copy of the proposal has become the text under negotiation.
  PROSE

  gm_note :triggered_by, "Players seeking Marrow's backing for emergency powers get three questions first: who can end them, which " \
                         "records stay public, and what happens to the person who refuses an order. Without a named ender, he withholds his support."
  gm_note :appears, "Where a crisis charter is being drafted, his marked copy of the draft circulates before he does. Delegations meet his objections in the margins and arrive at the session already arguing his terms."
  gm_note :complicates, "He holds no seat and declines to chair, so his weight arrives as annotated text and testimony. A party that has won Marrow over still has to find the delegates who will carry the vote."
end

relate :rel_vesh_marrow_led_bloom_coalition, :leads, :vesh_marrow, :bloom_coalition, since: 2380, till: 2396 do
  prose "Marrow served as the Coalition's sole Hand from its unified command in 2380 until dissolution in 2396."
end
relate :rel_vesh_marrow_participated_silent_bloom, :participated_in, :vesh_marrow, :the_silent_bloom, since: 2378 do
  prose "He entered the Silent Bloom response as a cordon operator and remained in cross-faction command after the immediate evacuation."
end
relate :rel_vesh_marrow_located_accord_shore, :located_in, :vesh_marrow, :accord_shore, since: 2423 do
  prose "He keeps rooms near the Accord records hall and works there when a delegation requests his advice."
end
relate :rel_vesh_marrow_cooperates_tempered_accord, :cooperates_with, :vesh_marrow, :tempered_accord, since: 2423 do
  prose "Accord delegations consult him on emergency charters and the authority needed to close them."
end
relate :rel_vesh_marrow_cooperates_displacement_council, :cooperates_with, :vesh_marrow, :displacement_council, since: 2384 do
  prose "The Council still asks Marrow to review cordon handoffs that divide authority between field commands."
end
