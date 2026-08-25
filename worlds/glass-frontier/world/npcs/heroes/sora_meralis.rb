npc :sora_meralis do
  name "Sora Meralis"
  summary "Sora Meralis is Chief Ledgrist of the Echo Ledger Conclave, elected in 2433 after a career authenticating legal records."
  subkind :leader
  born 2391
  occupation "Chief Ledgrist of the Echo Ledger Conclave"
  species "human"
  identity_source :species, :humans
  identity_source :culture, :sitharian_culture
  descriptive_identity disposition:
    "Meralis gives a restricted holding's title, its date, and the reason " \
    "it is closed, and not the recording. Her seals record the evidence " \
    "she examined, the evidence she refused, and where a finding rests on " \
    "interpretation."
  culture "Sithari"
  tags :archives, :resonance, :"signal-freq", :governance
  prominence :recognized
  status :complete

  prose <<~PROSE
    Sora Meralis is Chief Ledgrist of the #{ref :echo_ledger_conclave, "Echo Ledger Conclave"}. She spent her field years authenticating records used in inheritance and salvage claims, where a missing line could move a home or a cargo hold from one claimant to another. Her seals include the evidence examined, the evidence refused, and the part of a finding that rests on interpretation.

    The senior archivists elected her in 2433 after she proposed publishing catalogue descriptions for restricted holdings without releasing the recordings themselves. The descriptions have exposed duplicate names, unlisted gaps, and access rules that differ between adjoining galleries. Correcting those records has brought her support from working archivists and resistance from keepers of the older vaults.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Present Day"
    The #{ref :tempered_accord, "Tempered Accord"} has requested the new catalogue for every holding cited in a public ruling. Meralis will release titles, dates, and the reason each item is restricted. She refuses to release private voices or the locations of active Echo River sites.

    Three senior archivists have called for a new vote before the catalogue leaves #{ref :thornvault, "Thornvault"}. Meralis continues to sign releases from the upper gallery while the ballots are prepared. Any release already sealed remains valid even if she loses the office.
  PROSE

  gm_note :appears, "Her catalogue corrections reach the party as paperwork trouble: one holding entered under two names, a gap nobody had listed, an access rule that differs between adjoining galleries they already have permission for."
  gm_note :triggered_by, "Ask Meralis for a restricted holding and she gives the title, the date and the reason it is closed, without the recording. Private voices and the locations of active #{ref :echo_rivers, "Echo River"} sites she refuses outright."
  gm_note :complicates, "Three senior archivists have called a vote on her office while she keeps signing releases from #{ref :thornvault, "Thornvault"}'s upper gallery. A sealed release survives her losing, so both sides of a dispute have reason to move before the ballots are counted."
end

relate :rel_sora_meralis_leads_conclave, :leads, :sora_meralis, :echo_ledger_conclave, since: 2433 do
  prose "The Conclave's senior archivists elected Meralis Chief Ledgrist in 2433."
end
relate :rel_sora_meralis_located_thornvault, :located_in, :sora_meralis, :thornvault, since: 2425 do
  prose "She works from Thornvault's upper gallery and signs restricted catalogue releases there."
end
relate :rel_sora_meralis_member_conclave, :member_of, :sora_meralis, :echo_ledger_conclave, since: 2413 do
  prose "Meralis entered the Conclave as an authentication archivist before joining its senior ledgers."
  descriptive_identity standing:
    "Her standing was earned at the authentication benches, where a " \
    "missing line could move a home or a cargo hold between claimants; " \
    "the discipline of those years — evidence examined, evidence " \
    "refused, interpretation marked as such — is what she now asks of " \
    "the whole catalogue."
end
relate :rel_sora_meralis_studies_echo_rivers, :studies, :sora_meralis, :echo_rivers, since: 2413 do
  prose "Her authentication work compares disputed records with dated voices recovered from the Echo Rivers."
end
