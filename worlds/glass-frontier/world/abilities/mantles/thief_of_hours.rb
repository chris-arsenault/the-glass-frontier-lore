ability :thief_of_hours do
  name "The Thief of Hours"
  summary "The Thief of Hours is an Adversary mantle that extends Hourtaking across battles, cities, and catastrophes while its bearer lives every interval removed."
  type_of :hourtaking
  subkind :the_adversary
  status :complete
  tags :resonance, :religion, :danger, :cosmology
  prominence :recognized
  qualification "Answers someone who voluntarily received duration from another process so another person could finish an urgent act"
  succession "Passes to a person who voluntarily lives one stolen interval beside the bearer and accepts an equal share of its age"
  cost "Every removed interval passes through the bearer as lived duration, advancing hunger, fatigue, healing, injury, and age even when memory retains only fragments"

  descriptive_identity(
    signs: "Clocks disagree, moving subjects hang between positions, and the bearer emerges from the transferred interval older, hungry, injured, or carrying dust from work completed inside it.",
    effect: "The mantle extends #{encyclopedia_ref :hourtaking, "hourtaking"} from one short transfer to many processes across an army, city, or catastrophe.",
    limits: "Duration must come from a present physical process and passes through a living bearer. Completed events remain fixed, and transferred age can move again only into another living subject."
  )

  question "Who is the present or most recently attested Thief of Hours, and which stolen interval did they share to receive the mantle?", raised: "2026-08-31"

  prose <<~PROSE
    The Thief of Hours moves duration among many present processes at once. The bearer can suspend a battle between impacts, hold a city beneath an advancing blast, or let chosen companions enter hours taken from everything around them. Every moving body, spreading fire, failing structure, and working machine included in the hold contributes duration to the bearer.

    Transferred time remains physical. Hunger, medicine, corrosion, healing, thought, motion, and age proceed wherever the duration goes. A suspended casualty does not bleed and cannot receive a drug into the still tissue. A repeated lift repeats its muscle damage. A mechanism given an hour to cool also ages through that hour. The mantle changes rate and order; it leaves the completed past intact.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Counting the Interval"
    Before a large working, companions set clocks inside and outside the intended transfer, lay in water and food for the bearer, and mark untreated wounds. The clocks establish what moved; the body establishes what it cost. Memory may compress a long interval into a handful of images even though thirst, healing, and age record every hour.

    The final duration cannot be known from ordinary time alone. Holding one projectile for a minute yields a minute. Holding a burning district still requires duration from spreading flame, failing structures, moving air, bodies, and machinery, all of which continue through the bearer. Crews release the smallest useful set of processes first and recount before extending the pause.
  PROSE
  prose <<~PROSE, section: :legacy, heading: "Shared Time"
    Tessellan shadow lists name the bearer *Thief of Hours* because every interval removed from the world must be lived elsewhere. Their diagrams show a path returning to its next moment only after the bearer completes the missing course. The title remains exact even when the hours buy a rescue.

    A claimant qualifies by voluntarily receiving duration from another process so someone else can complete an urgent act. Succession requires the claimant to enter one stolen interval beside the bearer and accept an equal share of its age without knowing how long the work will take. If both emerge alive, the mantle passes; the years remain in both bodies.
  PROSE

  gm_note :triggered_by, "Any present process can lend duration to another: a projectile can lose its next second to a rescue, a wound can wait while treatment advances, or a pursuer's moments can be spent on escape."
  gm_note :complicates, "The bearer lives the duration of every suspended process, so holding a room or disaster costs far more age than its clock time; companions can reduce the cost by releasing processes from the pause one at a time."
end

relate :rel_thief_of_hours_resonates_false_form, :resonates_with, :thief_of_hours, :the_false_form
