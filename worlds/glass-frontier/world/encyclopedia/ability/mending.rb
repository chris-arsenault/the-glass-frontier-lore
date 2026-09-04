encyclopedia :mending do
  name "Mending"
  summary "Mending is a broad spell that rejoins one fresh wound, break, or damaged mark while its complete pattern remains present at the injury."
  kind :ability
  subkind :resonant_effect
  status :complete
  log "2026-08-31 — Separated Mending from the former Return ladder because it rejoins a fresh local disruption without searching for or choosing an earlier stable state."
  topics :resonance, :rebuilding, :archives, :materials
  prevalence :uncommon
  available_globally

  tier :broad
  effect "Rejoin one fresh wound, material break, or damaged record whose complete pre-damage pattern remains present at the injury"
  limits "All tissue, fragments, or marks needed for the repair must still touch or lie within reach; healing, deformation, contamination, later writing, or lost material makes the former pattern incomplete"
  consequence "The practitioner experiences the repaired disruption as pain and exhaustion until the subject has carried the mend through an ordinary period of use or rest"

  descriptive_identity(
    signs: "Cut edges draw together along the path of the injury, fragments settle into their newest break, or damaged marks rise through the material while the practitioner flinches from the same disruption."
  )

  prose <<~PROSE
    Mending rejoins damage before the subject has changed around it. A fresh cut closes along its own edges, a snapped tool returns across the newest break, and a scraped line rises from the displaced recording material. Nothing travels from elsewhere. The complete subject is still present at the injury, and the spell restores contact among parts that have only just been separated or displaced.

    The working window ends differently for every subject. Clotted tissue and swelling begin a body's next state. A bent fragment no longer matches the break it left. Dirt, coolant, or incompatible sealant interrupts a join. New writing over a damaged line makes two possible records where the mend requires one continuous mark.
  PROSE
  prose <<~PROSE, section: :aftermath, heading: "Pain Without Injury"
    The repaired damage passes through the practitioner as sensation and fatigue. A closed wound burns in the same place on the practitioner's body; a mended beam leaves the arms and spine aching under its load; a recovered line can produce the headache and eye strain of reading it through the damage. The practitioner carries no matching wound, but the pain remains until the subject has rested or worked long enough to prove the mend.

    #{encyclopedia_ref :return, "Return"} recovers an earlier stable state after that immediate continuity has been lost. It can choose among surviving patterns and therefore risks restoring old flaws that Mending never had to consider.
  PROSE
end
