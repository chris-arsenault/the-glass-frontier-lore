encyclopedia :old_proof do
  name "Old Proof"
  aka "proof", "the proof"
  summary "Old proof is a living leaven kept in household crocks and descended from the ring's provisioning cultures. Bread raised on it keeps for a season, and a household's proof line is inherited, fed on schedule, and mourned when it dies."
  kind :resource
  subkind :food
  status :complete
  topics :household, :trade, :"ring-era"
  prevalence :common
  available_globally
  function "Raises long-keeping bread; a live culture maintained by scheduled feeding"
  grades "Counted in falls — the recorded generations since registry stock — and by temper, young proof baking harsh and strong, settled proof mild"
  availability "Nearly universal in households; established lines pass by gift and reseeding"

  descriptive_identity(
    appearance: "A glazed crock set into the warm side of a wall or stove-bench, its surface culture " \
                "gray-brown with a pale bloom when healthy. Households read the bloom at morning " \
                "feeding the way they read a child's color.",
    working: "Fed on a strict schedule with meal and warm water, stirred, and rested. Bread raised " \
             "on it stays soft and sound for a season, and a loaf's keeping time tracks the age " \
             "of the line that raised it.",
    risks: "A proof line dies of cold, neglect, or a bad feeding, and it dies in a day. A dead crock " \
           "is a real loss — the bread that follows, raised on young replacement culture, is harsh " \
           "for a year — and households in evacuation carry the crock before the bedding."
  )

  prose <<~PROSE
    Nearly every household in the system keeps a proof: a glazed crock in the warm side of a wall, holding a living culture that raises the bread. Fed on schedule it lives indefinitely; bread raised on an established line stays soft and sound for a season in a road chest, which is why the loaf in every hauler's rack and every cordon post's shelf is proof bread. The keeping quality is real and measured — provisioning trials rerun in Sithari every few years confirm it — and the mechanism is attributed to the culture itself, since the same flour raised on young culture keeps a month.

    The lines are old, and their age is the point. The parent cultures were provisioning stock of the intact ring, formulated by #{encyclopedia_ref :elves, "elven"} provisioners and issued by registry number, and the issue registers survive in enough archives that an established household line can often be traced to its number. Some households still recite theirs. During the Famine years a live proof was the difference between a larder and a countdown, and the crocks that crossed those years came out of them as heirlooms: a line is inherited, gifted at weddings, carried in evacuations before the bedding, and reseeded outright to a neighbor whose crock has died.
  PROSE

  prose <<~PROSE, section: :trade, heading: "Falls and Temper"
    Lines are graded in falls — recorded generations since registry stock — and in temper. Young proof, freshly reseeded, bakes harsh: strong rise, sour crumb, a loaf that keeps poorly and announces itself. Settled proof bakes mild and keeps long. A household whose line dies faces the year of harsh bread while a reseeded culture settles, and the year is public, because everyone at the table can taste it.

    The lines move as gifts, and the gifts are a currency. A reseeding creates an acknowledged debt of the unhurried kind, and the map of who seeded whose crock is a real map of standing in any settlement — bakers' guild politics in Sithari have turned on it. Markets sell the bread freely, grade it by keeping time, and mark road loaves with the baking date; the crock stays home.
  PROSE

  cue "A glazed crock sits recessed in the warm wall by the stove, and the first thing anyone does on entering the kitchen — before greeting the visitor — is glance at the bloom on its surface."
  cue "The bread in the road chest is dense, faintly gray-crumbed, and dated in pencil on the crust, and it is plainly weeks old and plainly fine."
  affordance "Proof bread is the traveling food of the system — a season's keeping in a loaf — and a household's willingness to reseed a stranger's dead crock is a fast, honest signal of local standing."
  pressure "A proof line dies in a day of cold or neglect, and young replacement culture bakes harsh for the following year. Evacuation lists place the crock ahead of bedding."
  variation "Garden habs run communal crocks the size of barrels with posted feeding rosters; surface households keep small lines and guard their falls-count jealously."
  variation "A few archive-traced lines with low falls-counts from famous registry numbers are treated as civic property — Ledgerfall's oldest line has a keeper, a deputy, and a succession dispute."
end
