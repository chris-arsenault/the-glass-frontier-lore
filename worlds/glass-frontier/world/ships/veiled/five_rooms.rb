transport :five_rooms do
  name "Five Rooms"
  subkind :vessel
  status :complete
  prominence :marginal
  veiled "Five Rooms is a passenger kite whose cabins rotate to match the gravity of each destination."
end

relate :rel_five_rooms_at_mareth, :operates_in, :five_rooms, :mareth
relate :rel_five_rooms_at_holl, :operates_in, :five_rooms, :holl
relate :rel_five_rooms_at_vey, :operates_in, :five_rooms, :vey
relate :rel_five_rooms_at_carom, :operates_in, :five_rooms, :carom
