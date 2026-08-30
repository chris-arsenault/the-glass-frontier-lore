artifact :communication_shard do
  name "Communication Shard"
  summary "The Communication Shard is a thumb-length ringglass device that opens a private signal channel between Dern Talish and a hidden elven relay. It recognizes Talish and works only near a Bloom cordon or pre-Glassfall signal lattice."
  subkind :machine
  status :complete
  tags :resonance, :"signal-freq", :"ring-era", :mystery
  prominence :forgotten
  function "Open a private signal channel to a hidden elven relay"
  dm!(public_entry: :dern_talish)

  descriptive_identity(
    appearance:
      "A thumb-length sliver of clear ringglass with a single dark line " \
      "running through its center, stopping short of both cut faces. Near " \
      "an active Bloom cordon the line warms and can divide into three; " \
      "elsewhere it stays single and cold.",
    handling:
      "Pressed against bare skin while its holder sounds the opening " \
      "interval, it puts an elven operator's voice into her jaw and " \
      "throat, and carries back only speech shaped inside her body — no " \
      "recording, written message, or repeated tone opens it. It answers " \
      "to Dern Talish herself, not to her office.",
    risks:
      "Strong damping fields silence it where ordinary jamming cannot, " \
      "and there is no known way to pass it to a new holder without an " \
      "elf on the channel. Fractured, it would end the contact and hand " \
      "a piece of elven signal practice to whoever gathered the shards.",
  )

  prose <<~PROSE
    The Communication Shard is a thumb-length sliver of clear ringglass held by #{ref :dern_talish, "Dern Talish"}. A dark line runs through its center without touching either cut face. When she presses the shard against bare skin and sounds its opening interval, the line divides into three and an elven operator answers.

    No receiver in the room detects the exchange. Talish hears the reply through her jaw and throat. She can answer in speech, but the shard carries only the signal shaped inside her body. Written messages, recordings, and repeated tones do nothing.
  PROSE

  prose <<~PROSE, section: :operations, heading: "The Contact Channel"
    The elves answer warnings about Bloom movement, requests for a known countermeasure, and reports concerning the #{ref :the_false_form, "False Form"}. They do not identify their station, name the operator, or answer questions about their wider disposition. The voice can change between calls while the opening interval remains constant.

    The shard recognizes Talish rather than her office. #{ref :oram_sells, "Oram Sells"} transferred it by placing both hands around hers while the former operator altered the opening sequence. Talish has no procedure for repeating that transfer without an elf on the channel.
  PROSE

  prose <<~PROSE, section: :limits, heading: "An Irreplaceable Frequency"
    The shard opens only near an active Bloom cordon or a pre-Glassfall signal lattice. Away from either field, the central line remains single and cold. Strong damping can prevent contact; ordinary jamming cannot.

    Its frequency lies outside every closure used in current resonance notation. A Tuner can observe the first interval and cannot follow it to a repeatable tone. The elves built that controlled discontinuity into the glass. A fractured shard would leave Talish without a channel and expose a piece of their signal practice to whoever recovered it.
  PROSE
end

relate :rel_oram_sells_possessed_communication_shard, :possesses, :oram_sells, :communication_shard, since: 2421, till: 2432, dm: true do
  prose "Oram Sells held the shard as First Threshold and transferred its contact sequence to Dern Talish before his death."
end
relate :rel_communication_shard_resonates_false_form, :resonates_with, :communication_shard, :the_false_form, dm: true do
  prose "Its opening interval uses the same failure of closure by which the False Form presses into ordinary geometry."
end
