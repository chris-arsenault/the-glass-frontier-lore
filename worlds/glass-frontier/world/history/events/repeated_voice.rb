incident :repeated_voice do
  name "The Repeated Voice"
  summary "The Repeated Voice is a 2435 recovery at Bay Thirty-One of one voice from twenty-seven unrelated garments."
  subkind :discovery
  date 2435
  status :complete
  tags :archives, :household, :mystery, :resonance, :"signal-freq"
  prominence :marginal

  descriptive_identity(
    marks:
      "Twenty-seven garments and the ceramic maps made before washing " \
      "sit at Thirty-One, arranged by the time of their last wash. " \
      "Heard in that order, the voice gives directions through Wash " \
      "Four's clean route, and the last garment calls a turn past the " \
      "cylinder's sealed axial wall.",
    stakes:
      "Certificates are suspended on the lots whose traces read " \
      "stronger than their age permits, so their owners cannot sell " \
      "the cloth on and are refusing the one destructive wash that " \
      "would settle the question. Each further treatment removes the " \
      "voice's quietest phrases."
  )

  prose <<~PROSE
    Thirty-One recovered one speaking voice from twenty-seven unrelated garments. The pieces arrived from surface caravans, ring tugs, a diplomatic courier, and three local households. Their traces occupy different fibers and carry the surrounding rhythm of each garment's use.

    Tess Orr arranged the pieces by the time of their last wash. Played in sequence, the voice gives directions through Wash Four's clean route. The final garment describes a turn beyond the cylinder's sealed axial wall.
  PROSE

  prose <<~PROSE, section: :how_it_works, heading: "Twenty-Seven Chains"
    Each garment has a documented wash history. The voice survives only in fibers treated with ringglass mordant, and each later treatment removes its quietest phrases. Ordinary cloth from the same loads carries route beacons and tool rhythm without the voice.

    The Red Sleeve supplies the oldest matching phrases. Its three owners and repeated training washes establish how quickly a true trace should decay. Several later garments carry stronger versions than their age permits, so Thirty-One has suspended certificates for the affected lots while their owners contest another destructive wash.
  PROSE

  gm_note :appears, "The twenty-seven pieces came from surface caravans, ring tugs, a diplomatic courier and three local households with nothing in common, " \
                    "so any garment a party has had cleaned at #{ref :wash_four} is a plausible twenty-eighth and gets pulled for mapping."
  gm_note :triggered_by, "Players who ask to hear the whole thing are walked through it in wash order, and the last garment calls a turn past the cylinder's sealed axial wall that no clean-route lane reaches."
  gm_note :complicates, "Certificates are suspended on the lots that read too strong, so their owners cannot sell the cloth on and are refusing the one destructive wash that would settle the question."
end

relate :rel_repeated_voice_manifests_bay_thirty_one, :manifests_at, :repeated_voice, :bay_thirty_one do
  prose "Thirty-One holds the twenty-seven garments and the ceramic maps made before washing."
end

relate :rel_tess_orr_participated_repeated_voice, :participated_in, :tess_orr, :repeated_voice do
  prose "Tess Orr established the wash order that turns the separate phrases into a route."
  descriptive_identity(
    aims:
      "She wants the voice out of the cloth with its quietest phrases " \
      "intact, and each further treatment removes some of them — so " \
      "every step she takes narrows what the next one can recover.",
    conduct:
      "No garment is treated until a test succeeds on thread bargained " \
      "out of one of its existing repairs; the tested thread goes back " \
      "to each owner in a small glass tube along with the job record."
  )
end

relate :rel_red_sleeve_resonates_repeated_voice, :resonates_with, :red_sleeve, :repeated_voice do
  prose "The Red Sleeve preserves the oldest authenticated instance of the repeated voice."
end
