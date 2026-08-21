artifact :nineteen do
  name "Nineteen"
  subkind :instrument
  function "Shares load, balance, and body position through a linked work formation"
  status :complete
  tags :training, :transport, :resonance, :"kinetic-freq"
  prominence :marginal

  prose <<~PROSE
    Nineteen links the belt and shoulder segments found together in a sealed Kesh junction locker. Each segment carries two flexible ringglass ribs and joins its neighbors through broad sliding loops. When wearers move on one count, the ribs carry changes in load and balance around the complete harness. A person at the rear can feel a front foot lift before the weight reaches them, while the loops let the formation bend, kneel, and pass through a narrow turn without losing contact.

    Nineteen is fitted to the forty-person walking bridge through shared straps between segments. It has begun carrying a twentieth body position from the front pair toward the formation's center during each rotation of the spoke chamber.
  PROSE
end

relate :rel_kesh_possesses_nineteen, :possesses, :kesh, :nineteen, since: 2435 do
  prose "Kesh holds Nineteen and issues it for large formation work."
end

relate :rel_brace_studies_nineteen, :studies, :brace, :nineteen, since: 2435 do
  prose "Brace maps the extra body position Nineteen reports during the walking bridge."
end

relate :rel_nineteen_attuned_to_resonance, :attuned_to, :nineteen, :resonance do
  prose "Nineteen carries kinetic-band load and position through its linked ringglass ribs."
end
