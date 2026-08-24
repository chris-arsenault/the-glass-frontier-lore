transport :five_bolts do
  name "Five Bolts"
  subkind :vessel
  capacity "Three crew and one short-haul tow frame"
  status :complete
  tags :transport, :salvage, :"kinetic-freq", :"ring-hab"
  prominence :marginal

  prose <<~PROSE
    Five oversized fasteners hold the arrestor yoke from Brake's first captured derelict through the cabin frame of *Five Bolts*. Every crew paints the bolt heads before taking a new tow. The compact vessel moves hulls between the outer capture lane and the cutting lots: its kinetic array cancels small changes in motion while the mechanical yoke carries the pull, giving line crews a steady load they can read through an anchor.

    Five Bolts currently holds the captured medical vessel beside Forty. Its crew changes every six hours while the patients inside remain under synchronized sleep.
  PROSE

  gm_note :appears, "Hulls move between Brake's outer capture lane and the cutting lots on Five Bolts, and with three crew and a single tow frame it works one line at a time. Whatever else needs shifting waits."
  gm_note :triggered_by, "No crew takes a new tow until the five oversized fastener heads through the cabin frame have been repainted, and anyone riding along paints with them. The line does not go on until it is done."
  gm_note :complicates, "Five Bolts holds the captured medical hull beside #{ref :lot_forty, "Forty"} with a crew that changes every six hours, so anything arranged on the line has to be arranged again with the next watch."
end
relate :rel_five_bolts_operates_in_brake, :operates_in, :five_bolts, :brake, since: 2435 do
  prose "Five Bolts handles short hull tows within Brake's capture lanes."
end
