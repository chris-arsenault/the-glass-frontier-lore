npc :barok do
  name "Barok"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Barok braces cracked crucible carts in Ashvane before they return to Crucible."
end

relate :rel_barok_at_crucible, :operates_in, :barok, :crucible
relate :rel_barok_at_ashvane, :operates_in, :barok, :ashvane
