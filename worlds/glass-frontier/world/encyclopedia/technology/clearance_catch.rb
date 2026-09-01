encyclopedia :clearance_catch do
  name "Clearance Catch"
  kind :technology
  subkind :device
  status :complete
  topics :transport, :danger, :"ring-era", :trade
  prevalence :uncommon
  appears_when all: { place: [:dock] }
  summary "A Clearance catch is a fist-sized cargo arrester derived from elven capture frames. A sudden spin change throws its folded arm to the nearest bay rail and locks the freight frame in place. Spin-changing docks install rail grids within reach of every lawful cargo position and inspect each catch to a stamped mass and rate."
  function "Arrests cargo drift after spin changes by throwing a hooked arm to the nearest rail and locking the freight frame at the point where the break occurred"
  classes "The dock standard, one catch per cargo frame corner; the heavy paired pattern for machinery sleds; and the passenger-bay soft catch, padded and slower, for the frames people ride"
  operating_environments "Spin-changing docks and transfer bays — Clearance Eight and Mareth above all, whose rail grids were laid to the catch's reach"
  operating_limit "The catch needs a rail inside its arm's throw — the device is half of a system, and freight drifting in an unrailed bay is beyond anything bolted to its corners"
  capacity "A standard catch arrests a loaded frame at dock-legal spin rates; the stamped plate on each arm states the mass and rate it is sworn to, and the inspection punches say when it was last made to prove it"

  descriptive_identity(
    appearance: "A fist-sized alloy housing bolted at a cargo frame's corner, " \
                "holding a folded arm and hook; armed, it shows a green tab, " \
                "and its stamped plate carries the rated mass, the sworn spin " \
                "rate, and the inspection punches.",
    working: "The catch rides armed and quiet through steady spin; a sharp " \
             "break trips it, the arm throws to the nearest rail inside its " \
             "reach, the hook seats, and the frame stops where it is — the " \
             "whole action faster than the drift it interrupts.",
    risks: "A caught frame can hold heavy tension against the rail; crews use " \
           "a drilled unloading sequence before releasing the hook, and dock " \
           "law bars catches whose inspection punch is out of date."
  )

  prose <<~PROSE
    Elven freight systems used corner-mounted arresters related to the large capture frames preserved at #{ref :clearance_eight, "Clearance Eight"}. Postfall docks rebuilt the smaller pattern and retained the Clearance name. A fist-sized housing bolts to each corner of a cargo frame. During steady spin it holds a folded arm under a green armed tab. A sharp change in rotation trips the arm, throws its hook to a rail within reach, and stops the frame before the old momentum carries it across the bay.

    A catch works only where the dock supplies a rail grid. Clearance Eight and #{ref :mareth, "Mareth"} place a rail within an arm's throw of every approved cargo position, and dock boards certify frame ratings and bay reach together. The stamped plate gives maximum mass and spin change; inspection punches record proof tests. Loaders arm all four corners, call each green tab at the bay door, and reject frames with missing punches. After a trip, crews unload tension in a fixed sequence that keeps hands clear of the hook before releasing the frame. Regular spin-break drills test both the catches and the bay grid.
  PROSE

  cue "The drum trims its spin unannounced and the bay answers with a rattle of thrown arms — every frame catching its nearest rail, the freight hanging mid-drift in the positions the break found it."
  cue "At the bay door the loader calls the corners — green, green, green, green — and the checker initials the manifest against the stamped plates and their inspection punches."
  affordance "In a railed bay, rated catches arrest loaded frames during abrupt spin changes and hold them until crews release them in order."
  pressure "The system requires both current proof-tested catches and complete rail coverage; certification boards inspect the frame and bay as one installation."
  variation "Dock standards ride cargo corners; heavy paired patterns take machinery sleds; passenger-bay soft catches trade speed for padding on the frames people ride, and their drills are gentler for the same reason."
  variation "Recovered elven originals remain the certification masters; boards compare new stock against their trip timing, reach, and rated arrest under identical spin breaks."
end
