concept :entry_into_the_register do
  name "Entry Into the Register"
  aka "入册"
  tags :governance, :legibility, :legitimacy, :resistance
  prominence :recognized

  prose <<~PROSE
    A piece is admitted as an object before anybody knows what it says. The #{ref :the_preservationists, "Preservationist"} settlements enter an arriving #{ref :memory_ceramics, "memory ceramic"} on seal, mass, dimensions, condition, provenance and shelf address, and queue its contents for a #{ref :the_squeeze, "reading"} afterwards — sometimes several years afterwards, sometimes never. An admitted piece nobody has read is part of the record and is cited as one.

    The register is a bound book. A line may not be entered above its own number, and a line entered in error is struck through and initialled rather than rewritten. The settlements hold that a record whose order can be changed is not a record, and that a state which cannot say what it holds cannot be said to hold anything in trust.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "The Order At The Bench"
    The intake archivist works a fixed sequence and signs each step on the same line.

    First the consignment note against the courier's seal, with the piece still covered. A broken seal does not turn a load away; the piece is admitted under a broken-seal note naming the run, the courier and the crossing.

    Second the mass, on the bench balance, against the figure the sending copying house wrote on the note. The register allows a deficiency of two parts in a thousand for the road. Beyond that the archivist opens a loss note, which travels back with the counterfoil and is answered by the sending house or is not.

    Third the faces, under a raking lamp held low: heat blistering, frost spall, flooded glaze, and any edge lapped since the sending house measured it. Fourth the salt lock. Fifth the admission number, entered in ink in duplicate, one line in the house register and one counterfoil the courier carries back as the sending house's receipt. Sixth the shelf address — bay, coffer, position — written on the same line as the number.

    Only then does the piece join the reading queue, behind whatever the water card will allow.
  PROSE

  prose <<~PROSE, section: :limits, heading: "Illegible And Contested"
    A piece whose faces will not give a sheet — spalled, glaze-flooded, or fired past relief — stays admitted. It is entered 不成读, does not come to a reading, and shelved in the ordinary stack rather than the outer store. Every fourth year the illegible lines are requeued, because lapping practice changes: pieces that refused a reading in the 2070s have since given one, and the entry for a refusal names the reader and the ware so the next attempt starts from what failed.

    Two admitted pieces whose sheets disagree both stand. The conflict is entered as its own numbered item carrying the two admission numbers, and it cannot be closed by taking the reading again, because each sheet consumed the face that produced it. It closes when a third piece arrives. The request for one travels with the couriers on the western run; #{ref :yao_lin, "Yao Lin"} has carried the standing request from #{ref :the_liangzhou_double_return, "the Liangzhou item"} on four crossings.

    Neither an illegible line nor a contested item releases its coffer position. At the last count the two together held one bay in nine of the stack at the #{ref :juyan_register_house, "Juyan Register House"}.
  PROSE

  log "2026-08-09 — The intake order comes from a mint's coin trial: a consignment is admitted on seal and mass, with a stated permitted deficiency for the road, and the assay that establishes content is destructive and comes later. That decided the sequence — object first, contents afterwards — and the two-parts-in-a-thousand tolerance."
end
