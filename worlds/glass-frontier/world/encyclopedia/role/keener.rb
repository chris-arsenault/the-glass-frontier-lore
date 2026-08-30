encyclopedia :keener do
  name "Keener"
  summary "A keener is a hired mourner who sings a household's grief at funerals in the descending modes the elves left behind — a voice trained to carry loss into the bands on the family's behalf, so the bereaved can stand silent and still be heard. The trade is small, itinerant, and booked by letter against dates its clients hope to postpone."
  kind :role
  subkind :profession
  status :complete
  topics :music, :"ring-era", :religion, :household
  prevalence :rare
  appears_when any: { place: [:urban, :sealed_hab] }

  descriptive_identity(
    attire: "Undyed gray formal wear against every local funeral color, so the " \
            "keener reads as hired voice rather than kin — with the client " \
            "household's cord worn at the wrist for the day and returned, by " \
            "custom, with the fee's receipt.",
    tools: "The trained voice and the mode books — handwritten descents, each an " \
           "elven passing-form set with room for the dead's own names — plus the " \
           "pitch reed, the black engagement ledger, and the letters of standing " \
           "from households served, which are the trade's whole certification.",
    manner: "Composed, formal, and precise about grief the way a surveyor is " \
            "precise about ground; keeners interview the family before the " \
            "funeral with a fixed set of gentle questions, and their working " \
            "courtesy — hired sorrow, honestly rendered — is the trade's pride " \
            "and its answer to every joke made about it."
  )

  cue "The gray figure stands apart from the funeral colors at the grave's foot, waits for the family's nod, and opens the descent — the long falling line with the dead's names set into it — while the household stands silent and counted as heard."
  cue "The keener's interview the evening before: the fixed gentle questions, the family answering in fragments, and the mode book open on the table gaining a name, a trade, a habit worth a falling phrase."
  affordance "A keener gives a grieving household a voice it can hire when its own has failed — the loss sung formally into the bands, the elven descents lending the weight of the oldest mourning forms anyone knows, and the family freed to stand still."
  pressure "The trade sells the appearance of feeling backed by the discipline of craft, and every engagement walks that line in public — a descent that moves the mourners honors the house, and one false-noted phrase is retold for years."
  variation "City keeners work from standing rooms near the burial grounds and keep the great households' cords; route keeners ride circuits by letter, and thin country books them the way it books the route midwife — well ahead, against hoped-against dates."
  variation "The descents vary by lineage of teacher — each keener's mode books are hand-copied from a master's and annotated for a working life — and two keeners meeting compare books the way pilots compare charts."

  prose <<~PROSE
    The #{encyclopedia_ref :elves, "elves"} sang their dead down. Their passing-forms — long descending modes, recorded at the abandonment sites and in the archives' deep stock — are the oldest mourning music in Kaleidos, and the keener's trade descends from the Famine-generation singers who learned the forms off the recordings and sang them at the mass funerals of years when grief outran every household's strength. The craft that survives is intimate rather than mass: a keener is engaged by letter, interviews the family the evening before with the trade's fixed gentle questions, sets the dead's names and works and habits into a descent chosen from the hand-copied mode books, and at the funeral sings the household's loss on its behalf — the falling line carrying into the bands what the family, standing silent at the grave, is thereby counted as having said.

    The trade's economy is small and grave. Undyed gray against every local funeral color marks the keener as hired voice rather than kin; the client household's cord, worn at the wrist for the day and returned with the fee's receipt, marks whose grief is being rendered; and the letters of standing from households served are the whole certification a keener carries between towns. Custom defends the arrangement's honesty on both sides — the keener's discipline is hired sorrow honestly rendered, the family's obligation is honest answers at the interview — and the profession's oldest saying does the rest of the arguing: the elves left the forms and left, the saying runs, so someone has to be home to sing them.
  PROSE
end
