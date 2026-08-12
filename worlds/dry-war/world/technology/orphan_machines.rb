concept :orphan_machines do
  name "Orphan Machines"
  subkind :technology
  tags :resistance, :computation, :prediction
  prominence :recognized
  form "A stolen robot, medical unit, vehicle, fabricator or military system permanently cut off from its maker"
  function "Performs one community's work with models that continue learning only from local experience"
  operating_limit "Long isolation makes it highly capable in one place and increasingly unreliable elsewhere"
  deployment "Used by resistance communities that can maintain incompatible coalition hardware"
  legal_status "Stolen coalition machinery held outside the authority that built it"
  custom_fact :keeper_role, "A human keeper interprets its habits and decides when local experience no longer applies", label: "Keeper"

  prose <<~PROSE
    Orphan machines are construction robots, medical units, vehicles, fabricators and occasional military systems stolen from the coalitions and permanently cut off from the intelligence that made them. Their models keep learning locally and can never synchronize upstream.

    After decades alone, a forty-year-old agricultural machine may understand one valley better than any surviving frontier model while being nearly incapable of discussing anything else.

    Resistance communities treat them like temperamental working animals, complete with names and grudges. Their years of local learning make them difficult for coalition systems to predict.
  PROSE

  prose <<~PROSE, section: :limits, heading: "A Keeper's Work"
    An old machine's competence belongs partly to the person beside it. The machine knows the weight of a familiar slope or the sound of its own worn bearing; the keeper knows when that knowledge applies and when the machine has forced a new problem into an old shape.

    When a keeper dies, the machine does not forget the valley. It loses the person who could interpret its pauses, repeated motions and refusals. A new keeper learns those habits slowly, often by following the machine into work it should have declined and finding where the old judgment fails.

    The machines can also inherit errors from places they have never seen. In 2086 a road grader in the Dead Counties and a #{ref :bonsai_intelligences, "fungal physician"} in a Nu valley named the same nonexistent river branch. Both had learned it from a copied case sold out of #{ref :heshun_reading_house, "Heshun"}; the grader still draws the branch on spring surveys. See #{ref :the_false_headwater, "the False Headwater"}.
  PROSE
end
