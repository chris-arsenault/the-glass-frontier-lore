encyclopedia :vigil_pin do
  name "Vigil Pin"
  kind :technology
  subkind :device
  status :complete
  log "2026-08-31 — Renamed Vigil Shock Pin to Vigil Pin; Vigil supplies the established field-use context, and pin retains the spike's concrete form without narrating its effect in the title."
  topics :resonance, :danger, :"ringglass", :trade
  prevalence :uncommon
  appears_when any: { place: [:cordon, :ringglass_rich] }
  summary "Vigil pins are single-use grounding spikes cast from a sacrificial lattice. Driven flush around a camp, instrument site, or rig, each pin carries one resonance strike into the ground and shatters into inert black grains. Crews set their spacing from strike tables, replace pins by date, and refill every spent gap."
  function "Grounds one resonance strike — the pin's lattice takes the discharge that would have found a person, a hull, or an instrument, and spends itself absorbing it"
  classes "The hand pin driven at a boot's length for personal work; the camp ring of knee-high pins circling a site; and the mast pin, arm-long, that wards a whole rig and costs accordingly"
  operating_environments "Strike country — the cordons, the ringglass-rich grounds whose glass loads the bands, and anywhere survey and salvage crews stand still in weather that arcs"
  operating_limit "Each pin grounds one strike within its rated reach; protection depends on full-depth setting, current lattice date, and spacing that leaves no gap in the ring"
  capacity "A standard hand pin grounds any single strike the cordon tables rate for its class; the mast pins take the big arcs, and a strike above a mast pin's rating is weather the manuals answer with one word: leave"

  descriptive_identity(
    appearance: "A dark, dense spike the length of a hand — glassy lattice under " \
                "a matte skin, point kept sheathed — sold banded in dozens; a " \
                "spent pin is a scatter of black grains around a small clean " \
                "hole, which is the sight crews call a paid bill.",
    working: "The pin drives point-down into ground or fitting until the band " \
             "seats flush; it needs neither wire nor tending, sits its watch " \
             "through any weather, and when a strike arrives inside its reach " \
             "it takes the discharge down its lattice and shatters — one flat " \
             "crack, one strike spent, one gap in the ring to re-pin.",
    risks: "A shallow pin grounds only part of a strike and can scatter hot; " \
           "expired lattice becomes brittle, and excess spacing leaves an " \
           "unprotected path through the ring."
  )

  prose <<~PROSE
    Elven ring fabric used sacrificial lattice plugs to ground discharges before they reached more valuable systems. The portable pattern was first cast at #{ref :vigil_breach, "Vigil Breach"} from Kyther-range lattice stock and took the Vigil name. A hand pin is a dense dark spike with a sheathed point and a seating band. Driven until that band lies flush, it needs no wire or active tending. A strike within reach travels down the lattice; the pin gives one flat crack and becomes inert black grains. The crew then drives a replacement in the empty position.

    Survey and salvage crews use cordon tables to choose pin size and spacing. They count pins out, drive them full depth, check date bands on each watch, and count spent positions back after weather. Hand pins protect standing work, knee-high rings enclose camps, and arm-long mast pins cover rigs and towers. Expired pins go to the melt bag before their lattice becomes brittle. Crews call the black scatter around a clean hole “a paid bill”: it marks a strike absorbed and a gap that must be filled before work resumes.
  PROSE

  cue "The survey crew rings the instrument site at the tables' spacing — a dozen dark spikes driven flush, counted aloud — and the weather that arcs an hour later costs one flat crack, one scatter of black grains, and a re-pin."
  cue "At the camp's edge the quartermaster works the date bands with a lamp, pulls the expired pins for the melt bag, and drives fresh — the ring renewed by calendar, ahead of any sky."
  affordance "A banded set gives crews portable single-strike grounding around camps, instruments, and rigs without wires or powered maintenance."
  pressure "Protection lasts only while every position holds a full-depth, in-date pin at the table's spacing; a spent pin creates a gap until replaced."
  variation "Hand pins ward standing work; camp rings hold sites overnight; mast pins take the big arcs for rigs and relay towers, and their ratings end where the manuals' one-word weather advice begins."
  variation "The casting yards' lattice stocks differ — Kyther-stock pins run to a higher rating and price, and the cheaper southern castings are bought by the crate for camp rings where quantity is the protection."
end
