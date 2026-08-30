encyclopedia :sable_backecho do
  name "Sable Backecho"
  summary "A Sable Backecho is a recording anomaly of the Echo River country: a nearby living voice appears inside material recorded before that person was born, speaking in place, in period, and in character. The archives treat backechoed stock as damaged evidence and collector's treasure in the same breath."
  kind :phenomenon
  subkind :phenomenon
  status :complete
  topics :archives, :mystery, :"signal-freq", :resonance
  prevalence :rare
  appears_when any: { place: [:archive, :waterway] }
  medium "Echo-water recordings and crystal stock stored in the Sable Crescent"
  nature "Insertion of a contemporary voice into older recorded material; documented only where recordings and living speakers share a room"
  hazard "A backechoed record loses evidentiary standing, and the person whose voice appears acquires a season of unwanted fame"

  descriptive_identity(
    signs: "A recording plays true until a voice enters that the ledger says was born too late — " \
           "pitch and accent unmistakable to anyone who knows the speaker — holding a small part " \
           "in the old scene: a vendor's call, one side of a bargain, a name shouted across water.",
    effects: "The insertion survives copying, and copies made before the insertion date play " \
             "clean — the archives' one firm handle on the thing, and the reason backecho " \
             "study is a science of copy dates.",
    hazards: "Registry law strikes backechoed stock from evidence, and the living speaker " \
             "spends a season answering questions about a scene their grandmother predates."
  )

  prose <<~PROSE
    In the Sable Crescent, where the #{encyclopedia_ref :echo_rivers, "Echo Rivers"} soak the whole country's stock in remembered signal, the recordings sometimes answer back. A backecho is specific and always the same shape: a living voice — a real person, nearby, verifiable — appears inside material recorded before that person was born. The voice belongs to the scene it enters. It calls prices in a market the ledgers closed in the Famine years, gives one side of a bargain in period idiom, answers a hail across water in a boat song three generations out of use. The pitch and accent are the living speaker's beyond argument; the words are at home in the old scene and, in every documented case, unremarkable inside it.

    The archives learned the phenomenon's one firm rule by accident: copies cut before the insertion play clean. A backecho has a date — the ledgers can bracket it between the last clean copy and the first echoed one — and backecho scholarship is therefore a science of copy dates, worked in the registries with the patience of orbit calculation. The Thornvault concordance lists every documented case with its bracket, its speaker, and its material; the brackets cluster in flood years and high signal tides, and the concordance's introduction has stated the same conclusion through four editions: the record is consistent with several mechanisms and establishes none.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Damaged Evidence, Loved Stock"
    Law and the market pull opposite ways. Registry law strikes backechoed stock from evidence — a record that admits late voices has surrendered its testimony — and the striking is mechanical, indifferent to how small the inserted part. The collectors arrive at the same ledger from the other side: an echoed record is the Crescent's characteristic treasure, priced by the fame of the voice and the age of the scene, and estate sales in Ledgerfall announce a backecho in the catalog's largest type.

    The living speakers carry the strangest share. A backechoed person is ordinary in every respect the surveys can measure, and spends a season as a local event — played their own voice trading in a dead market, asked by every acquaintance what it is like, expected to have an answer. The Crescent's custom has settled into a courteous script: the speaker hears the record once, in private, before anyone else; declines or accepts the fame as they choose; and is bought a drink either way.
  PROSE

  cue "The old market recording plays its familiar crowd until one vendor's call comes through in a voice half the room knows personally, selling in period idiom, and the archivist stops the crystal and reaches for the copy ledger."
  cue "In the estate catalog one lot is set in large type — river stock, dated scene, named living voice — and the dealers have marked it before the viewing opens."
  affordance "The clean-copy rule gives every backecho a date bracket, which makes the concordance a real dataset — flood years, tide peaks, speaker ages — and gives any archive holding early copies a verification service other registries pay for."
  pressure "One late voice strikes a whole record from evidence, so a backecho lands as a legal event — claims resting on the stock reopen, the copy ledgers get subpoenaed, and the living speaker's season of fame arrives with the summons attached."
  variation "Ledgerfall's cases run to market scenes and boat songs; the canyon vaults report sparser, stranger insertions — single names, called once, in scenes otherwise silent."
  variation "Some Crescent families treat a backecho in the line as an honor and bind the record into the family archive; others buy every copy and sit on them, and the concordance marks those brackets 'closed by purchase.'"
end
