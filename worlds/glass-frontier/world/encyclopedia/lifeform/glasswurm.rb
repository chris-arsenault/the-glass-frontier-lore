encyclopedia :glasswurm do
  name "Shearwurm"
  summary "Shearwurms are segmented Farborn borers that live inside soft debris and coarse ringglass aggregates. Their independently turning mouth rings cut smooth tunnels that may strengthen rubble or hollow a load-bearing seam."
  kind :lifeform
  subkind :anomaly
  status :complete
  log "2026-08-31 — Renamed Glasswurm to Shearwurm; the title ties the borer to its debris-region habitat."
  topics :orbital, :salvage, :danger, :ringglass, :resonance
  prevalence :common
  appears_when all: { place: [:debris_field] }

  descriptive_identity(
    appearance: "A segmented, plated borer, narrower than a ship corridor and long enough to cross one several " \
                "times, cutting with rings of small mouths that each turn independently around its axis. Belts " \
                "of dark eyes line each segment's underside, appearing one after another as the body crosses " \
                "an opening; old specimens carry enough accumulated glass to answer a sounder from across a " \
                "fragment.",
    behavior: "It bores smooth, strong-walled tunnels through soft debris and coarse ringglass aggregate, " \
              "passing loosened material back through separate feeding openings and sorting glass and metal " \
              "into dense body chambers. A live tunnel shows fine dust moving along one wall in still air and " \
              "regular crescent bite marks; the animal branches around strong seams, leaving ribs of untouched " \
              "material it returns later to feed on.",
    threat: "Repeated structural notes — sustained sounding, a twice-run scan, a hammer — draw it back along " \
            "its own tunnel, through ground a crew has already walked and cleared. Large specimens bore " \
            "through bulkheads, receiver walls, and anchored cutters because worked structure cuts cleaner " \
            "than rubble; one crossing a pressurized room rarely touches the occupants, and the breach it " \
            "leaves can kill them."
  )

  prose <<~PROSE
    Shearwurms are segmented Farborn borers that live inside soft debris masses and coarse ringglass aggregates. Most working specimens are narrower than a ship corridor and long enough to cross one several times. Their plated bodies follow tunnels cut by rings of small mouths, each ring able to turn independently around the animal's axis.

    A shearwurm can make a useless rubble mass into a set of strong, smooth-walled passages. It can also hollow the one load-bearing seam holding a work site together. Salvagers inspect the tunnels, shed plates, and fresh bore dust before trusting any fragment known to hold one.
  PROSE

  prose <<~PROSE, section: :biology, heading: "Mouth Rings and Eyes"
    Each segment carries a belt of dark eyes along its underside. The belts vanish inside the tunnel while the animal moves and appear one after another when it crosses an opening. Individual eyes track light and nearby motion. The whole arrangement also follows low structural vibration through the surrounding mass.

    The forward mouth rings do the cutting. Hard plates close on mineral grains, twist, and pass the loosened material backward through separate feeding openings. Some stock is digested. Ringglass and metal collect in chambers along the body, where repeated pressure and resonance sort them into dense layers. Old shearwurms carry enough glass to answer a sounder from across a fragment.

    Shearwurms add segments while feeding and shed the worn inner plates of their mouth rings. A shed plate is translucent at the edge and dark near its root. Fresh plates still carry the animal's cutting response after separation, which makes them valuable to toolmakers.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Reading a Burrow"
    A live tunnel has fine dust moving along one wall even in still air. Regular crescent marks show where mouth plates bit and turned. The tunnel often branches around a strong structural seam, leaving a rib of untouched material between openings. Those ribs can support a surprising load until the animal returns to feed on the glass accumulated within them.

    Survey crews place mechanical pins across a burrow rather than sounding directly into it. A changed pin angle shows movement without giving the shearwurm a strong tone to follow. Active sounders are used from a distance and shut down after a single pulse. Repeated structural notes can bring the animal back along its own tunnel.

    Small specimens retreat from pressure and bright heat. Large ones may continue boring through a bulkhead, receiver wall, or anchored cutter because the active structure provides a cleaner path than rubble. A shearwurm crossing a pressurized room rarely attacks its occupants. The breach it leaves can kill them.
  PROSE

  prose <<~PROSE, section: :trade, heading: "What Crews Take"
    Shed mouth plates are the safest harvest. Crews find them in old feeding pockets, wash away adhering tissue, and store each plate between dead ceramic pads. Tool shops grade them by the tone at the root and by whether the edge still changes angle under pressure.

    Shearwurm-worked tunnel sections are valuable in their own right. The animal compacts mixed glass and mineral along some walls into curved panels with continuous grain. A crew can cut those panels free for instrument housings and pressure shells. The same fragment may contain hidden chambers of brittle waste, so buyers demand a complete burrow survey.

    Live capture pays more and succeeds rarely. A contained shearwurm needs a changing stock of rubble, isolated structural mass, and room to extend. Research pens that hold the animal against a fixed wall eventually become part of its tunnel.
  PROSE

  cue "A large specimen bores through a bulkhead, receiver wall, or anchored cutter because worked structure gives a cleaner path than rubble, so it enters an occupied room through the floor. It rarely touches the people there; the breach behind it is the emergency."
  cue "A live tunnel has fine dust moving along one wall even in still air."
  affordance "Sustained sounding, a repeated hammer, or a scan run twice near a shearwurm-held fragment is a structural note the animal follows. It comes back along a tunnel it already cut, so it arrives through ground the crew has walked and cleared."
  pressure "A burrow leaves ribs of untouched material between its openings, and those ribs hold load until the animal returns to feed on the glass inside them. Shoring, a braced floor, or a survey done last week can stop being true with nothing visible changing."
  variation "Small specimens retreat from pressure and bright heat."
  variation "Old shearwurms carry enough glass to answer a sounder from across a fragment."

end
