npc :sable_korr do
  name "Sable Korr"
  summary "Sable Korr is the keeper of Fermata Station's informal Session archive and an Audience member excluded from formal performance."
  subkind :dissident
  occupation "Standard scholar and keeper of Fermata's Session archive"
  species "human"
  culture "Hab-Worlder"
  tags :music, :archives, :governance, :"signal-freq"
  prominence :forgotten

  prose <<~PROSE
    The keeper of #{ref :fermata_station, "Fermata Station"}'s informal Session archive. Sable Korr can trace #{duration 80} of recorded performances, the disputes in which they were played, and the changes later musicians treated as precedent. Players consult her before calling an old Standard in a new argument. She can tell them what the room heard last time and which part of that memory the surviving recording actually supports.

    Sable is a member of the Audience. She failed her citizenship Sit-In in 2405 and cannot vote, call a tune, or play a governing solo. The failure removed her from formal participation and sharpened the value of the work she could still do. Much of Fermata's government now depends on an archive maintained by someone its audition judged unable to govern.
  PROSE
  prose <<~PROSE, section: :operations, heading: "The Listening Archive"
    The archive occupies three narrow rooms behind the central hall. Signal glass in the first room holds direct Session recordings. The second contains listening copies whose strongest structural frequencies have been damped, allowing scholars to study them without making the walls answer every performance again. The third holds paper notes, set lists, repair reports, trade copies, and witness accounts.

    Sable preserves disagreement between those records. A clean signal capture may show that a soloist entered early; a witness may insist the rhythm section had already yielded; a repair report may establish that the room's pulse slowed because a brace began to fail. She places the accounts beside one another and records who relied on each interpretation in later Sessions.

    Standard scholars across the system buy copies during the #{ref :the_fermata_open, "Fermata Open"}. Sable sends the performance with its context or refuses the sale. A recording stripped of the room, the dispute, and the physical response is music. It is not evidence of Fermata's law.
  PROSE
  prose <<~PROSE, section: :history, heading: "The Failed Sit-In"
    Sable entered her Sit-In as a careful pianist with an exact memory for repertoire. The house ensemble shifted away from the Standard she had prepared and left a long opening for her to answer. She returned to the written changes, beautifully and alone. The evaluators failed her for hearing the authority of the piece more clearly than the people playing it.

    She stopped performing in public after that day. Her notes on the Sit-In include the house recording, the evaluators' comments, and three later accounts from Players who disagreed over whether the opening had been invitation or warning. She has never asked the Session to revisit the result.

    The recording is now cited in arguments over whether a test can judge listening when every possible reply already carries political meaning. Sable supplies the copy to either side. She also corrects anyone who claims the ensemble played the same opening in later hearings; the timing was never repeated.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Influence Without a Part"
    Sable sits behind the Players during major Sessions with the relevant recordings cued and her notes open. A performer may turn to her between pieces and ask what a modulation meant in an earlier dispute. She answers in full sentences, names conflicting readings, and does not recommend a choice. The next performance often reveals which part of her answer the Player wanted.

    For the coming Closing Session, she has prepared every unresolved ending in the archive and found no precedent for Dez Morrn's composition without a fixed return. She is recording the rehearsals as context rather than law. If the piece enters the repertoire, later scholars will need to know what its players believed they were attempting before the central hall answered them.
  PROSE

  gm_note :triggered_by, "Ask Sable what an earlier Session meant and she supplies the recording, the witness account that contradicts it, and the repair report showing the room's pulse slowed on its own. She names the conflict without recommending a reading, so the choice gets made in front of the hall."
  gm_note :complicates, "Her failed Sit-In bars Sable from voting, calling a tune, or playing a governing solo, so nothing she knows can enter a Session in her own voice. Her evidence needs a citizen willing to play it and to carry whatever it does to the argument."
  gm_note :appears, "Copies of Fermata's Session recordings sell to visiting scholars during #{ref :the_fermata_open, "the Fermata Open"}, and Sable sends each one out with the dispute, the repair report, and the witness accounts attached. A buyer who wants the performance alone does not get the sale."
end

relate :rel_sable_located_in_fermata, :located_in, :sable_korr, :fermata_station do
  prose "#{ref :sable_korr, "Sable Korr"} keeps Fermata Station's Session recordings in listening rooms behind the central hall."
end
relate :rel_sable_studies_open, :studies, :sable_korr, :the_fermata_open, since: 2405 do
  prose "Sable records the #{ref :the_fermata_open, "Fermata Open"} as both performance and political history, preserving the room around each apparent precedent."
end

moment :sable_failed_sit_in, year: 2405, of: :sable_korr do
  summary "Sable Korr failed Fermata's citizenship Sit-In in 2405 after following a written Standard more closely than the other musicians."
  prose "Sable Korr failed her citizenship Sit-In in 2405 after answering a written Standard more closely than the musicians who had departed from it."
end
