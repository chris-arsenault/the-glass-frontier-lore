installation :glasswake do
  name "Glasswake"
  path "player/locations/settlements/glasswake.md"
  tags :surface, :trade, :"ring-era"
  prominence :recognized

  prose <<~PROSE
    A mining town on Kaleidos's surface, built around the ruins of a ring hab fragment that fell during the #{ref :the_glassfall, "Glassfall"}. The fragment's inter-hab communication equipment — buried in the wreckage for a hundred and sixty-five years — turned out to need only minor repair to function. Glasswake didn't set out to reconnect the world; a salvage crew poking through old wreckage found a transmitter that still had power, and one of them knew enough to make it talk.
  PROSE
  prose <<~PROSE, section: :origin, heading: "Origin"
    What it was before the Famine — what the original ring hab was, who lived in it, what it was called — nobody knows, and nobody particularly cares. The fragment is a resource, not a heritage site. Miners work the ringglass deposits in the impact debris. The old hab structures serve as foundations, warehouses, and — in one case — a pub.
  PROSE
  prose <<~PROSE, section: :economy, heading: "Economy"
    Mining. The impact debris field is rich with #{ref :ringglass, "ringglass"} aggregate — not high-grade material, but consistent volume. The mines have been producing for decades and aren't close to exhaustion. It's steady, unglamorous work that supports a stable community.

    The reconnection history adds a secondary economy: tourism. Glasswake is the Plymouth Rock of the Rekindling — historically significant, practically unremarkable, visited by people who care about that sort of thing. The tourist trade supports a few inns, a museum in the old transmitter building, and a gift shop that sells overpriced ringglass trinkets stamped with "First Signal." The miners find this mildly embarrassing and entirely welcome.
  PROSE
  prose <<~PROSE, section: :atmosphere, heading: "Atmosphere"
    A working town that happens to be famous. The streets are dusty from the mines. The buildings are practical — ringglass-reinforced stone, functional architecture, no pretension. The fallen hab fragment dominates the skyline as a ridge of fused crystal along the town's eastern edge, weathered into something that looks almost natural if you don't know what you're looking at.

    #{ref :span_nine, "Span Nine"} — the relay that carried the first signal — is a landmark on the ridge between Glasswake and #{ref :sithari, "Sithari"}. Tourists hike to it. Locals use it as a reference point for directions. "Past Span Nine, take the left fork."

    A surface-access spur connects Glasswake to #{ref :keel, "the Keel"}, the system's primary orbital trade lane. This makes the town a minor waypoint — not a hub, but a place where kites descending from the Keel stop and crews resupply.
  PROSE
end

relate :rel_glasswake_on_surface_kaleidos, :on_surface_of, :glasswake, :kaleidos do
  prose "Glasswake sits on the surface of #{ref :kaleidos, "Kaleidos"} — one of the two settlements that first reconnected when the long silence broke."
end
relate :rel_glasswake_located_in_kaleidos, :located_in, :glasswake, :kaleidos, since: 2160 do
  prose "It has held its stretch of coast since the early Famine, a surface town that kept its lights on through the worst of the isolation."
end

# --- history (moments) ---
moment :glasswake_founded, year: 2160, of: :glasswake do
  prose "A ring fragment fell during the #{ref :the_glassfall, "Glassfall"} and half-buried itself, leaving a ridge of fused crystal and stone. The first settlers built against it for shelter during the Famine, and the town grew around the wreckage the way a town grows around a crossroads — not by plan, but because people kept showing up."
end
moment :glasswake_first_signal, year: 2305, of: :glasswake do
  prose "A salvage crew found a pre-Glassfall transmitter that still had power, and one of them knew enough to make it talk. The first long-range signal after the #{ref :signal_famine, "Signal Famine"} went from Glasswake to #{ref :hab_meridian, "Hab Meridian"}, whose receiver happened to still be listening. The reconnection of the system began with two communities that stumbled into it."
  effects { set :glasswake, standing: :reconnected }
end
relate :rel_glasswake_cooperates_hab_meridian, :cooperates_with, :glasswake, :hab_meridian, since: 2305 do
  prose "Its oldest tie is to #{ref :hab_meridian, "Hab Meridian"} — the hab that answered the First Signal — and the partnership has run continuously ever since."
end
