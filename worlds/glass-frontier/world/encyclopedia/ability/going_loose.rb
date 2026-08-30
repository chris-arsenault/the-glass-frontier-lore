encyclopedia :going_loose do
  name "Going Loose"
  summary "Going loose is the trained way to fall through changing spin: reading the drift mid-air, keeping the body long, and landing on moving gravity. Ring habs teach it to children the way river towns teach swimming."
  kind :ability
  subkind :technique
  status :complete
  topics :training, :"ring-hab", :danger
  prevalence :common
  appears_when any: { place: [:sealed_hab, :orbital] }
  function "Carries a falling body safely through drifting or rotating gravity to a soft landing"

  descriptive_identity(
    signs: "A faller who has gone loose stretches long, arms trailing, head turning in small " \
           "measured checks — the posture of someone reading the room on the way down. The landing " \
           "comes rolling, along the drift line, and finishes standing more often than seems fair.",
    effect: "Spin gives every fall a sideways verdict, and the verdict shifts deck by deck. A " \
            "loose faller reads the drift against fixed lines — seams, stairs, hung lamps — " \
            "steers with trailing limbs, and takes the floor moving with it.",
    limits: "The skill needs height to read in and a floor at the end. Short drops arrive before " \
            "the read does, and the trained response of stretching long is exactly wrong in a " \
            "cluttered shaft, which is why yards drill the tucked variant separately."
  )

  prose <<~PROSE
    On a settled world, falling has one direction. On a rotating fragment it has a verdict — spin hands every dropped thing a sideways push, the push varies deck by deck, and a hab like Kesh changes the rules between morning and evening shift. Going loose is the trained answer, taught to ring-hab children in padded galleries the way river towns teach swimming: stretch long, find a fixed line with the eyes, read which way the world is sliding, steer with the trailing limbs, land rolling in the direction the floor is already going.

    The name is the first instruction. A frightened body goes rigid and takes the deck as a collision; a loose one arrives as a passenger stepping off. Instructors grade students the way drovers grade a descending herd — by the first mover. In any group exercise one student reads the drift early and commits, and the rest key off that line, so gallery classes produce, on purpose, habs full of adults who glance at the best faller in the room before a long drop the way a herd watches its lead animal at a gate.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Where It Earns Its Keep"
    Working height is ring-hab life: riggers on span frames, pickers in tall stores, children in stair shafts built for a spin the fragment has since revised. Most of the skill's daily work is invisible — a slip on a wet gallery that ends in a roll and a resumed conversation. Its public work is the drop drill, run seasonally in most habs, where whole galleries practice the long fall to the net floor and the old hands go last, showing off exactly as much as their joints permit.

    Yards drill a second form, the tucked variant, for falls among clutter — arms bound in, one rotation accepted, impact taken on the padded line of back and shoulder. Which variant to take is the split-second judgment the drills exist to make automatic, and rigging bosses interview for it by asking a candidate to describe their worst fall, slowly.
  PROSE

  cue "Someone slips from the high walk, stretches long, turns once with trailing arms, and lands rolling along the deck's drift before rising to their feet."
  cue "In the padded gallery a class of children takes turns dropping to the net floor while an instructor calls the drift like a ferry pilot calling water."
  affordance "A crew that has gone loose together rigs height on bare frames and saves its nets for training days, and the best faller in the room is a living drift gauge everyone reads before a long drop."
  pressure "The long read needs height and open floor, and the split-second choice between stretching long and tucking small is the difference between a roll and a broken shoulder in a cluttered shaft."
  variation "Kesh, with its shifting gravity, treats going loose as a civic art and holds exhibition falls at festival; visitors are encouraged toward the nets first."
  variation "Yard crews drill the tucked variant to a count, and a rigger's scars tell an interviewer which variant they favored a half-second too long."
end
