resource :dead_root_interfaces do
  name "Dead-Root Interfaces"
  tags :resistance, :biotech, :symbiosis
  prominence :recognized

  prose <<~PROSE
    Temporary biological interfaces built to connect to the mycelium and then die on command. A courier grows a sensory membrane across a forearm, connects to a fungal terminal for ninety seconds, takes what they came for, and triggers necrosis in the interface.

    They are ugly, they hurt, and every resistance community on the continent uses them. The principle is stated the same way everywhere: never permit a connection capable of surviving you changing your mind.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "Ninety Seconds And The Kill"
    The interval is not a safety margin. It is how long a membrane grown from a #{ref :severed_strains, "severed strain"} holds its signalling before the necrosis agent, which is loaded at the same time as the graft, reaches the tissue that carries it. A courier who needs longer grows two.

    The kill is the part that is engineered and re-engineered. A membrane that dies slowly leaves signalling tissue attached to a living network, so the agent is chemical rather than electrical, carried in the graft rather than triggered from outside, and cannot be countermanded once released. Interfaces with a machine-controlled kill stay out of the trade because the same system at the far end could keep them alive.
  PROSE

  prose <<~PROSE, section: :trade, heading: "What Dead Tissue Is Worth"
    A spent membrane is not waste. It is the organism's own signalling hardware, no longer part of anything, and the only form in which a machine coalition can buy fungal interface tissue without a licence, an admission or a treaty. #{ref :the_brokers, "Pearl River houses"} sell spent grafts by weight into the #{ref :the_amur_line, "Amur"} trade, graded on how cleanly the kill ran.

    Coalition laboratories use the spent tissue to build fungal-machine interfaces, pushing the trade toward #{ref :hybridization, "the outcome every resistance culture fears"}. Pearl River houses know what they are selling and continue because dead tissue crosses borders that living fungus cannot. The #{future "Blagoveshchensk grading standard"} is written in a hand that belongs to neither government.
  PROSE
end
