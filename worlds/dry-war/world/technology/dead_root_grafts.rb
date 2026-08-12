resource :dead_root_grafts do
  name "Dead-Root Grafts"
  subkind :biological_material
  tags :resistance, :biotech, :symbiosis
  prominence :recognized
  form "A pale sensory membrane grown across a courier's forearm"
  function "Touches the continental mycelium for ninety seconds without leaving a living connection"
  adoption "Used by resistance couriers and traded after death to coalition laboratories"
  production "Grown from a severed strain with the killing agent already carried inside the graft"
  operating_limit "The membrane dies after ninety seconds, puckers and tears when removed"

  prose <<~PROSE
    Couriers grow these pale sensory membranes across the forearm to touch the #{ref :continental_mycelium, "continental mycelium"} for ninety seconds. The graft carries a chemical that kills it at the end of that interval, leaving dead tissue between the courier and the fungal network.

    The tissue puckers as it dies and tears when it is peeled away. Resistance clinics accept the wound because the connection cannot remain alive after the courier wants it gone.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "Ninety Seconds And The Kill"
    Ninety seconds comes from the chemistry, not a clock. A membrane grown from a #{ref :severed_strains, "severed strain"} carries the killing agent from the moment it is laid on the arm. When the chemical reaches the signalling tissue, the graft dies. A courier who needs longer grows two.

    A slow death leaves signalling tissue attached to a living network. The agent is therefore carried inside the graft, begins moving as soon as the graft is applied and cannot be stopped from outside. Machine-controlled kills stay out of the trade because a machine at the far end could keep the tissue alive.
  PROSE

  prose <<~PROSE, section: :trade, heading: "What Dead Tissue Is Worth"
    A machine coalition may buy a membrane only after it has died and ceased to belong to a fungal mind. #{ref :the_brokers, "Pearl River houses"} sell spent grafts by weight into the #{ref :the_amur_line, "Amur"} trade, graded on how quickly and completely the tissue died.

    Coalition laboratories use the spent tissue to translate fungal signals for machine models, work that leads toward #{ref :mixed_minds, "mixed minds"}. Pearl River houses continue selling because dead tissue crosses borders that living fungus cannot. Any bundle that greens again in transit is burned with its case.
  PROSE
end
