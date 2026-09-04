encyclopedia :cordoners do
  name "Cordoners"
  summary "Cordoners are people raised beside Bloom boundaries. They learn warning colors before letters, wear the current safe routes stitched into their clothes, and carry the boundary discipline into adult life and other trades."
  kind :culture
  subkind :cultural_identity
  status :complete
  topics :"fluid-reality", :household, :"social-structure", :training
  prevalence :uncommon
  appears_when any: { place: [:cordon, :bloom_adjacent] }
  integration "Cordon towns raise all their children in the discipline regardless of trade or family; grown cordon children scatter into every profession and are recruited hard by the boundary services, who consider the childhood half the training"
  aesthetic "The safe-route marks: colored stitching on sleeves and hems that maps the wearer's home cordon's current safe lines, re-sewn as the boundary moves — worn plain by adults who stayed, and kept folded in a drawer by most of the ones who left"

  descriptive_identity(
    appearance: "Children with route stitching bright on their sleeves and " \
                "hems; adults marked more subtly — the stitching kept or " \
                "retired, the habit of glancing at posted colors surviving " \
                "either way.",
    manner: "Cordon training begins every visit by checking the day's line, " \
            "counting exits, repeating warnings aloud, and correcting an " \
            "outdated route mark as soon as it is seen.",
    hospitality: "A cordon household greets a guest with the day's colors and " \
                 "the safe lines before the meal — stated plainly, once, in " \
                 "the doorway — and the guest who repeats them back correctly " \
                 "has been welcomed in the town's own grammar."
  )

  prose <<~PROSE
    Cordon services teach their warning palette through nursery songs. Once a child can walk, the household stitches the current safe routes into sleeves and hems and resews them whenever the boundary shifts. Children repeat the day's colors at the doorway, follow closure bells, and hear #{encyclopedia_ref :ache, "sensitives"} grade an approaching emission. During #{encyclopedia_ref :still_mornings, "still mornings"}, families walk the safe lines and report damaged marks or changed ground.

    Adults raised at a cordon carry those practices into other settlements: they check posted colors, count exits, and ask where the current line lies before entering boundary ground. Many boundary services treat the childhood as part of a recruit's training, though cordon children also enter every other trade. Those who leave often retire the route stitching to a drawer and wear it again at weddings. At home, households report changes, update the clothes, and teach the next child the route they will use that week.
  PROSE

  cue "The guest is greeted in the doorway with the day's colors and the safe lines, stated once and plainly, and the household relaxes a visible degree when she repeats them back in order."
  cue "At the kitchen table, a parent unpicks last month's route stitching from a small sleeve while the child traces the new safe line before it is sewn."
  affordance "Boundary services treat cordon-raised recruits as already trained in warning colors, closure bells, route updates, and threshold procedure."
  variation "Standing-cordon towns raise the full discipline with the services' palette; bloom-adjacent farm country keeps a lighter version — colors, lines, and the doorway greeting — scaled to a quieter boundary."
  variation "The diaspora keeps the identity in customs — retired stitching worn at weddings, the doorway exchange between placed accents — and the services' recruiters work the scattered cordon-raised harder than any academy."
end
