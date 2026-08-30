encyclopedia :archives_and_public_memory do
  name "Archives and Public Memory"
  summary "Archives and Public Memory is the legal and civic tradition that treats recovered records as public evidence requiring independent custody, preserved readings, and visible disagreement. It took its modern shape handling the records the elves left, and it treats every archive as answerable to the public account."
  kind :culture
  subkind :governance
  status :complete
  topics :archives, :governance, :"signal-freq", :"ring-era"
  prevalence :common
  available_globally

  descriptive_identity(
    manner: "Archivists in this tradition speak in custody chains as reflexively as sailors " \
            "speak in weather — who found it, who held it, who read it, in order — and treat " \
            "'where has this been?' as the polite first question about any document.",
    hospitality: "A visiting researcher is offered the custody record before the record itself, " \
                 "and an archive that produces the document first is telling the visitor to " \
                 "read carefully."
  )

  prose <<~PROSE
    A recovered record can change a claim, a lineage, or the accepted account of an inhabited place. Archives therefore preserve more than the words. They record who found the piece, which vaults held it, what each reader saw, which surface was altered, and where two copies disagree, and the disagreement is retained with the record — visible to the public beside the text it disputes.

    The tradition took its modern shape on the #{encyclopedia_ref :elves, "elves"}' paper. The Famine years left the system holding the archives of a vanished civilization — registries, correspondence, the operating records of the ring — and the first generation of custodians learned by hard experience that whoever held a recovered elven record first held its meaning, and that meaning moved claims, borders, and successions. The custody discipline that grew from those disputes now covers every record of consequence: important finds pass through independent hands, destructive reading waits until the visible layer has been copied outside the first reader's control, and first custody is treated frankly as a form of power to be divided.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Witness, Copy, and the Public Shelf"
    The working institutions are the witness roster and the public shelf. A find of consequence is read under witnesses drawn from outside the finder's interest — the archives keep standing rosters the way courts keep jurors — and the witnessed reading, alterations and all, goes to the public shelf where any citizen can compare it against later claims. Local archives differ over how many witnesses satisfy the custom and whether a stable copy may travel in place of the original; #{ref :verathi, "Verathi"} moves originals through three vaults, Thornvault seals them and circulates witnessed copies, and the two houses have argued the point in cordial print since the Rekindling.

    On one rule the tradition speaks with one voice: an unrecorded gap weakens the evidence, whatever the explanation. A record that dropped out of custody for a season returns demoted, cited afterward with its gap attached, and archivists inherit the reflex so deeply that the phrase 'a gap in the chain' does duty across the system for any suspicious convenience.
  PROSE

  cue "A record arrives with custody marks, parallel readings, and alterations listed beside the text rather than hidden in an archivist's notes."
  cue "The researcher receives the custody chain first and the document second, in that order, from an archivist watching to see which one gets read harder."
  affordance "A party can challenge a convenient reading by demanding the independent copy or the missing portion of its custody trail, and the public shelf lets any citizen run the comparison themselves."
  pressure "Water, containment, or access may require destroying the surface whose independent reading has yet to be completed, and the custodian who authorizes the cut answers for it in the public record forever."
  variation "Some archives move the original through several vaults; others keep it sealed and circulate witnessed copies."
  variation "Frontier settlements run the tradition lean — two witnesses and a market-wall shelf — and their archivists cite the lean custom's clean record with some heat when the great houses condescend."
end
