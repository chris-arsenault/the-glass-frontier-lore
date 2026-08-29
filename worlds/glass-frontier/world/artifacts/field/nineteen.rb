artifact :nineteen do
  name "Nineteen"
  summary "Nineteen is a linked work harness whose ringglass ribs share load, balance, and body position across a moving formation. Kesh fits its recovered belt and shoulder segments to a forty-person walking bridge."
  subkind :instrument
  type_of :field_instrument
  function "Shares load, balance, and body position through a linked work formation"
  status :complete
  tags :training, :transport, :resonance, :"kinetic-freq"
  prominence :marginal

  descriptive_identity(
    appearance:
      "Belt and shoulder segments recovered together from a sealed Kesh " \
      "junction locker, each set with two flexible ringglass ribs and " \
      "joined to its neighbors by broad sliding loops. Shared straps fit " \
      "the whole run to a forty-person formation.",
    handling:
      "Wearers move on a single count; the ribs pass every shift of load " \
      "and balance around the harness, so a person at the rear feels a " \
      "front foot lift before the weight arrives. The loops let the line " \
      "bend, kneel, and take a narrow turn without breaking contact, and " \
      "segments come off mid-formation only by dropping the count.",
    risks:
      "A wearer who breaks stride sends that motion around the ribs " \
      "before their own movement finishes, and the line bends with it or " \
      "loses contact. With forty people in it the harness reports twenty " \
      "positions, and the extra one moves from the front pair toward the " \
      "center each turn of the spoke chamber, putting load through " \
      "whoever it crosses from a body that is not there.",
  )

  prose <<~PROSE
    Nineteen links the belt and shoulder segments found together in a sealed Kesh junction locker. Each segment carries two flexible ringglass ribs and joins its neighbors through broad sliding loops. When wearers move on one count, the ribs carry changes in load and balance around the complete harness. A person at the rear can feel a front foot lift before the weight reaches them, while the loops let the formation bend, kneel, and pass through a narrow turn without losing contact.

    Nineteen is fitted to the forty-person walking bridge through shared straps between segments. It has begun carrying a twentieth body position from the front pair toward the formation's center during each rotation of the spoke chamber.
  PROSE

  gm_note :appears, "Kesh issues Nineteen for any load one crew cannot carry, so a party joining a big lift is handed segments still adjusted to whoever wore them last. The belts can be retaken mid-formation only by dropping the count."
  gm_note :triggered_by, "Everyone in the harness moves on one count, so a wearer who breaks stride to draw, turn, or grab at something sends that change around the ribs before the movement finishes. The line either bends with it or loses contact."
  gm_note :complicates, "The harness reports twenty positions while forty people are in it, and the extra one travels from the front pair toward the center each time the spoke chamber turns. Whoever it passes through takes load from a body that is not there."
end

relate :rel_kesh_possesses_nineteen, :possesses, :kesh, :nineteen, since: 2435 do
  prose "Kesh holds Nineteen and issues it for large formation work."
end

relate :rel_brace_studies_nineteen, :studies, :brace, :nineteen, since: 2435 do
  prose "Brace maps the extra body position Nineteen reports during the walking bridge."
end
