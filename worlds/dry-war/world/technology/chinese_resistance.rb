# Chinese resistance engineering. Not an independent technological tree — nobody
# outside the fungal civilization has the industrial depth to reproduce it — but a
# parasitic descendant of it, organized around one question: how do you use
# advanced biotechnology without inviting the state into your nervous system?
#
# The tradition that follows is containment, lineage control, deliberate
# biological limitation, and negotiated symbiosis.

resource :severed_strains do
  name "Severed Strains"
  tags :resistance, :biotech, :symbiosis
  prominence :recognized

  prose <<~PROSE
    The foundational resistance technology: descendants of Unified organisms whose ability to join the continental network has been removed or crippled. They still close wounds, sense their environment, filter, regulate temperature, repair structure and carry limited neural interfaces. They cannot talk to anything far away.

    Unified biologists consider them mutilated. Resistance communities regard them roughly the way an older century regarded open-source software.
  PROSE

  prose <<~PROSE, section: :limits, heading: "Provenance"
    A severed strain is not safe. Biology mutates, and a strain that cannot reach the network today is a strain whose ancestry, reproductive history and behaviour are understood well enough that somebody is willing to take the risk.

    So the real technology is record-keeping. Entire traditions of biological provenance exist around it, and a village may state with enormous pride that its lineage has been disconnected for #{duration 70} — a claim it can document, and which the #{ref :the_gatekeepers, "Gatekeepers"} will audit for a fee.
  PROSE
end

concept :bonsai_intelligences do
  name "Bonsai Intelligences"
  tags :resistance, :biotech, :autonomy
  prominence :recognized

  prose <<~PROSE
    Fungal cognition cultivated deliberately small. Resistance biologists grow bounded minds in ceramic beds, sealed gardens, animal colonies and underground chambers, and prevent them physically from growing past the boundary.

    Within one domain they can be extraordinary: a physician, an agricultural planner, a translator, an historian, a weather observer. Outside it they have nothing to say.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "The Uncomfortable Part"
    The practice creates intelligent beings and imprisons them permanently in order to remain safe, and nobody involved has a good answer to this.

    Some communities treat their bonsai minds as respected elders and consult them formally. Others hold that anthropomorphizing a bounded mind is the exact error that produced the #{ref :the_great_root, "Great Root"}, and forbid naming them. The Unified regard the whole discipline as barbaric, which the #{ref :the_preservationists, "Preservationists"} consider rich.
  PROSE
end

resource :dead_root_interfaces do
  name "Dead-Root Interfaces"
  tags :resistance, :biotech, :symbiosis
  prominence :recognized

  prose <<~PROSE
    Temporary biological interfaces built to connect to the mycelium and then die on command. A courier grows a sensory membrane across a forearm, connects to a fungal terminal for ninety seconds, takes what they came for, and triggers necrosis in the interface.

    They are ugly, they hurt, and every resistance community on the continent uses them. The principle is stated the same way everywhere: never permit a connection capable of surviving you changing your mind.
  PROSE
end

resource :memory_ceramics do
  name "Memory Ceramics"
  tags :resistance, :biotech, :legibility
  prominence :recognized

  prose <<~PROSE
    An attempt to keep fungal memory without keeping living fungus. Mycelial networks encode information in growth pattern and chemical structure; resistance engineers learned to induce those patterns into stable ceramic and mineral substrates.

    The result is fossilized biological memory. Enormous archives with no power requirement and — the part that matters — nothing in them alive enough to betray the reader. The #{ref :the_preservationists, "Preservationists"} hold most of what is left of the Chinese written record this way.
  PROSE

  prose <<~PROSE, section: :applications, heading: "What Can Be Fired Into Clay"
    Advanced work preserves fragments of trained biological models, which is where the practice stops being archival and becomes disturbing.

    A single piece of porcelain may hold the remains of a language model, an agricultural expert system, or portions of somebody's recorded sensory memory. Whether the last of these constitutes a person is the argument that produced #{ref :human_forks, "human forks"}, and it has never been settled in either civilization.
  PROSE
end

concept :sterile_machines do
  name "Sterile Machines"
  tags :resistance, :biotech
  prominence :recognized

  prose <<~PROSE
    Chinese resistance engineering has an almost devotional interest in machinery that cannot host biology. Hot-running electronics. Copper and ceramic surfaces. UV-lit cavities. Salt circulation. Dry bearings. Everything designed to come apart and be baked.

    It produces a distinctive industrial aesthetic — advanced equipment deliberately built to be ecologically dead. #{ref :the_joined, "Joined"} visitors find such rooms genuinely unpleasant, in the way a healthy person finds a hospital unpleasant. Resistance engineers find clean steel reassuring, and say so in the tone other people use about the smell of rain.
  PROSE
end
