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
end
relate :rel_five_bolts_operates_in_brake, :operates_in, :five_bolts, :brake, since: 2435 do
  prose "Five Bolts handles short hull tows within Brake's capture lanes."
end
