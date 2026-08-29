npc :shei_lush do
  name "Shei Lush"
  summary "Shei Lush is the pianist and Chair who has presided over Fermata Station's governing Sessions since 2424."
  subkind :official
  status :complete
  tags :music, :governance, :diplomacy
  prominence :forgotten
  occupation "Chair of Fermata's governing Sessions"
  jurisdiction "Procedure and recognition during Fermata Sessions"
  type_of :fae
  belongs_to :culture, :hab_worlder
  override_identity appearance:
    "Shei Lush holds an unusually settled outline for a fae. Fermata's " \
    "continuously tuned rooms carry much of the coherence load, and within " \
    "the station she wears no visible aid — visitors often learn what she " \
    "is only when she leaves the tuned halls."
  descriptive_identity disposition:
    "Shei restates a petitioner's business more exactly than they wrote " \
    "it, and the room then argues her version. Where two proposals " \
    "overlap she repeats their shared tones and withholds the note on " \
    "which they differ."

  prose <<~PROSE
    Shei Lush has held the Chair at #{ref :fermata_station, "Fermata Station"} since 2424. The office does not command the Players. She recognizes who has the floor, restates the change under dispute, and decides when the room has produced a resolution clear enough to enter in the Session record.

    She plays piano from the open side of the ensemble. Her lines are spare because the Chair must leave room for a challenge to be heard. When two proposals overlap, she repeats their shared tones and withholds the note on which they differ. The musician who fills that space accepts responsibility for the next turn of the argument.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Holding the Chair"
    Before a Session, Shei reads repair limits from #{ref :ol_dent, "Ol'dent"}, precedent notes from #{ref :sable_korr, "Sable Korr"}, and the written statement of every matter submitted. She may refuse a tune whose structural load exceeds the hall's current condition. She cannot refuse a dispute because its answer will be difficult.

    During proceedings she names every unresolved change before the Players move on. A decision that cannot be played back by a second ensemble is recorded as an adjournment. This practice has made her Sessions slow and their records unusually usable.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "The Closing Session"
    Dez Morrn's proposed ending has no fixed return and therefore no obvious point at which the Chair can declare resolution. Shei has asked each faction to submit the consequence it believes the ending carries, then placed those statements in the rehearsal order.

    The eastern seating bank is also returning an unexplained low tone under a full audience. Shei has moved preliminary hearings to a smaller room and left the Closing Session on the calendar, subject to Ol'dent's load tests.
  PROSE

  gm_note :appears, "Shei reads every submitted matter before a Session and restates the disputed change in her own words when the hearing opens. Petitioners hear their business summarized more exactly than they wrote it, and the Players then argue the version she stated."
  gm_note :triggered_by, "Carry a point in a Session and Shei has a second ensemble play the resolution back before it enters the record. Anything that cannot be reproduced is written down as an adjournment, so an unrepeatable performance settles nothing."
  gm_note :complicates, "The eastern seating bank returns a low tone under a full audience, so Shei has moved preliminary hearings to a smaller room and holds the central hall subject to #{ref :ol_dent, "Ol'dent"}'s load tests. She refuses any tune whose load the hall cannot currently take."
end

relate :rel_shei_lush_located_in_fermata, :located_in, :shei_lush, :fermata_station do
  prose "Shei Lush keeps rooms beside Fermata's central hall and conducts Sessions there."
end
relate :rel_shei_lush_chairs_fermata, :chairs, :shei_lush, :fermata_station, since: 2424 do
  prose "Shei recognizes speakers, restates disputed changes, and records resolutions as Chair of Fermata's Sessions."
end
relate :rel_shei_lush_cooperates_ol_dent, :cooperates_with, :shei_lush, :ol_dent, since: 2424 do
  prose "Shei accepts Ol'dent's structural limits as binding on the hall schedule."
end
relate :rel_shei_lush_cooperates_sable_korr, :cooperates_with, :shei_lush, :sable_korr, since: 2424 do
  prose "Shei consults Sable Korr's archive when a Session claims an earlier performance as precedent."
end

moment :shei_lush_takes_chair, year: 2424, of: :shei_lush do
  summary "Fermata's Players chose Shei Lush as Chair in 2424 after a Session failed three times to determine its own adopted ending."
  prose "Fermata's Players chose Shei Lush to hold the Chair after one Session failed three times to establish which of two endings it had adopted."
end
