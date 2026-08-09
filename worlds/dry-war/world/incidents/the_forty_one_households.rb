incident :the_forty_one_households do
  name "The Forty-One Households"
  tags :governance, :identity, :legitimacy, :legibility
  prominence :recognized

  prose <<~PROSE
    Two ceramic pieces at the #{ref :juyan_ceramic_vault, "Juyan Ceramic Vault"} preserve the 2061 household list for the same Liangzhou ward. One includes forty-one families that the other omits. The pieces came from different copying houses, four years apart. Their readings agree on the other eleven hundred and eighty-two households, the ward boundary and the year.

    Both exposed faces were ground away in the reading. No third copy has reached Juyan. Eleven households now living there descend through the missing names, including the family of #{ref :bao_qiuyan, "Bao Qiuyan"}. Their births, marriages and examinations remain valid, but every public record that follows those lines bears a note that the ancestry is disputed.
  PROSE

  prose <<~PROSE, section: :aftermath, heading: "The Network Copy"
    The #{ref :the_gatekeepers, "Gatekeepers"} have access to network archives made before 2052 and say those copies settle the count. Juyan rejects them because accepting the answer would make #{ref :the_great_root, "the Great Root"} the authority over which Chinese records survived it, the exact claim the #{ref :the_preservationists, "Preservationists"} built their settlements to resist.

    Bao therefore keeps the vault while her own place in Juyan's public life rests on two sheets that cannot both be right. The settlement assembly has twice confirmed that the eleven households hold the same offices and rations as their neighbours. One of those rulings was written by a clerk descended from the forty-one.
  PROSE

  log "2026-08-09 — Replaced the double return as a paperwork dispute with the forty-one living families affected by two incompatible ceramic records."
end
