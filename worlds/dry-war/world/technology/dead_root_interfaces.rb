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

    The kill is the part that is engineered and re-engineered. A membrane that dies slowly leaves signalling tissue attached to a living network for as long as it takes, so the agent is chemical rather than electrical, carried in the graft rather than triggered from outside, and cannot be countermanded once released. Nobody in the trade will use an interface whose kill depends on a machine, and #{ref :physical_cryptography, "the practice that governs the rest of resistance security"} is the reason given.
  PROSE

  prose <<~PROSE, section: :trade, heading: "What Dead Tissue Is Worth"
    A spent membrane is not waste. It is the organism's own signalling hardware, no longer part of anything, and the only form in which a machine coalition can buy fungal interface tissue without a licence, an admission or a treaty. #{ref :the_brokers, "Pearl River houses"} sell spent grafts by weight into the #{ref :the_amur_line, "Amur"} trade, graded on how cleanly the kill ran.

    Which makes the trade the quietest route toward #{ref :hybridization, "the thing every resistance culture exists to prevent"}, run by the cultures that most fear it, in a material they generate as a by-product of protecting themselves. Coalition buyers are not told what the grafts are for and do not ask; the #{future "Blagoveshchensk grading standard"} is written in a hand that belongs to neither government.
  PROSE
end
