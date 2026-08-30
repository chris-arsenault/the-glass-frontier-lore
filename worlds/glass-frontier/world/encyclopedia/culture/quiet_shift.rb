encyclopedia :quiet_shift do
  name "Quiet Shift"
  summary "The quiet shift is the custom that ends a trade apprenticeship: the seniors hang their tools and leave mid-shift, and the apprentice discovers that everything alive or burning in the building is theirs to keep for one full cycle."
  kind :culture
  subkind :work_tradition
  status :complete
  topics :training, :"social-structure", :household
  prevalence :common
  appears_when any: { place: [:yard, :garden, :archive] }

  descriptive_identity(
    manner: "A shop on a quiet shift is recognized at a glance: the seniors' tools hung, their " \
            "aprons folded on the benches, and one young person running every station alone at " \
            "speed. Neighbors keep custom by leaving the shop to its day.",
    hospitality: "Visitors during a quiet shift are served exactly as usual, by the apprentice. " \
                 "Regular customers who notice keep their orders simple that day and save their " \
                 "questions for the season's end."
  )

  prose <<~PROSE
    An apprenticeship in most Kaleidos trades ends when the seniors walk out. The day is theirs to choose and they choose it silently; the apprentice looks up from a task and the shop is quiet, the tools are hung, and the kiln, the vat, the graft bed, the tuned frame — whatever in that trade must be tended continuously or die — is now theirs for a full working cycle. Keep it alive, keep the doors open, serve whoever comes, and the trade considers you made. The shift's length depends on what is being kept: one firing at a kiln, one watering cycle in a garden hab, one full accession-and-sealing round in an archive.

    The custom is younger than it feels. Trade registers from before the Signal Famine record ordinary journeyman examinations. The quiet shift dates from the Famine years, when the #{encyclopedia_ref :elves, "elves"} vanished from their workshops between one shift and the next — benches found with work laid out, firings half-run, cultures still warm — and the apprentices who kept those works alive became the trade by the plain fact of having kept it. The shops that survived were the ones where somebody stayed. When the trades rebuilt their rules in the Rekindling, they kept the test that had actually been administered.
  PROSE

  prose <<~PROSE, section: :structure, heading: "What Counts as Passing"
    Passing is continuity. A firing may come out flawed and a graft may need reseeding, but the work must still be alive and the shop still answering its door when the seniors return. The one absolute failure is abandonment — an apprentice who goes for help has ended their own shift, and most trades make them start the waiting again from the next season.

    Whether the seniors may come back early is the argument every trade has and every trade keeps open. Emergencies happen. A shop two streets from a cordon bell will empty for the bell, quiet shift or not, and most masters hold that a shift interrupted by genuine catastrophe simply resumes. A minority of shops stage a small crisis on purpose — a supplier who fails to arrive, a customer with an impossible order — and the rest of the trade considers them to be missing the point.
  PROSE

  cue "A workshop is open and working but wrong: the seniors' aprons folded on the benches, their tools hung, and one young person running every station alone at speed."
  cue "Regular customers order simpler than usual and pay the asking price, and the room's talk stays on the weather and the work."
  affordance "Anyone who has stood a quiet shift can be trusted with the shop, and hiring crews verify the claim by asking what was kept alive and for how long — an answer the trade can test in two questions."
  pressure "A real emergency during a quiet shift forces the question the trades keep open: an apprentice who leaves to fetch help has failed by every traditional reading, and one who stays through a cordon bell may keep the shop and lose the street's respect."
  variation "Garden habs run the shift across a full watering cycle, kilns across a single firing, and archives across one accession-and-sealing round, so its length is the trade's own clock."
  variation "A few shops stage a false crisis as part of the shift; most trades regard the practice as missing the custom's origin and say so."
end
