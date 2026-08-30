encyclopedia :perch_salt_egg do
  name "Perch Salt-Egg"
  kind :resource
  subkind :food
  status :complete
  prevalence :uncommon
  appears_when any: { place: [:sealed_hab, :market] }
  summary "Perch salt-eggs are cured eggs packed in mineral salt at Perch and Kesh, graded by shake and keeping for a season. A finished egg cracks itself open when held beside a working kinetic line, and crews prize them for exactly that trick."
  function "Season-keeping preserved protein for route chests and hab larders"
  grades "Seven grades sorted by shake and heft at the packing bench, first-shake through seventh, with first-shake commanding cordon-post prices"
  availability "Cured at Perch and Kesh in the herd seasons; sold through hab markets and route provisioners across the ring settlements"

  descriptive_identity(
    appearance: "A dense gray-shelled egg crusted in pressed mineral salt, packed in barrels in " \
                "tight spirals with the narrow ends inward, each layer under its own salt blanket.",
    working: "Curing crews work in threes — two cutting and salting, one packing the spiral — " \
             "grading each egg by a practiced shake and dropping it in the right basket behind " \
             "them blind, eyes already on the next egg. A good crew fills a barrel to the count " \
             "of a work song.",
    risks: "The kinetic crack is the freshness test and the storage rule in one: a salt-egg " \
           "carried along an active kinetic line opens itself, so route chests stow them in " \
           "damped boxes and a crew that forgets eats its whole supply the same day."
  )

  prose <<~PROSE
    Perch cures eggs the way it does everything, in the rhythm of its seasonal swelling. When the herd season fills the settlement, curing crews of three take over the cold galleries — two cutting and salting, one packing — and the eggs of the season's flocks go into mineral salt by the barrel. Packing follows the old spiral: narrow ends inward, each layer blanketed in salt, seven hundred to the barrel, and the crews grade as they go, judging each egg by a practiced shake and tossing it to the right basket blind. Seven grades come off one bench. First-shake eggs, dense and silent, go to cordon posts and long-route provisioners at the best prices; seventh-shake feeds the packing crews.

    The cure hardens the shell and settles the inside into a firm, sliceable paste, salt-sweet and lasting a full season in a road chest. Its famous property arrives with the cure's finish: a finished salt-egg held beside a working kinetic line cracks itself open, cleanly, along the shell's long axis. Kesh crews — who work beside kinetic fields all shift — treat this as the whole point, carrying their lunch sealed and opening it against the nearest live line. Everyone else treats it as the storage rule, and route chests carry salt-eggs in damped boxes for exactly the reason Kesh finds them convenient.
  PROSE

  cue "A worker holds a gray salt-crusted egg to the humming line for a moment; it cracks neatly along its length, and lunch begins."
  cue "In the market barrel the eggs sit in a tight salt spiral, narrow ends to the middle, and the seller shakes one beside your ear before naming the price."
  affordance "A first-shake salt-egg is a season of keeping in a pocket and opens itself wherever machinery runs, which makes it the standard working lunch of kinetic crews and the standing gift for a departing traveler."
  pressure "The crack that makes them convenient makes them fragile in transit — one undamped chest crossing a live junction opens the whole cargo, and a hauler who has smelled the result checks the boxes twice."
  variation "Perch cures in bulk through the herd season with songs that pace the bench; Kesh cures small batches year-round and grades harder, and each settlement is certain the other's third-shake is its own fifth."
  variation "Cordon posts age first-shake eggs past a second season for the deep watches, and a properly aged one opens with a soft sigh that watch crews claim to bet on."
end
