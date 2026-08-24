era :the_rekindling do
  name "The Rekindling"
  summary "The Rekindling was the period of reconnection that began in 2305 when Glasswake reached Hab Meridian by repaired transmitter."
  subkind :historical_period
  status :complete
  tags :rebuilding, :diplomacy, :transport, :divergence
  prominence :renowned
  structural true

  prose <<~PROSE
    The Rekindling began in 2305 when a repaired transmitter at #{ref :glasswake, "Glasswake"} reached #{ref :hab_meridian, "Hab Meridian"}. The reply established that both surface and ring communities had survived. Relay crews repeated the exchange, recovered dormant addresses, and carried working sets toward settlements known only from old route records.

    Each new contact joined communities that had developed separate laws, measures, accents, and resonance practices during the Signal Famine. Reconnection brought medicine, replacement parts, and family news. It also brought claims based on Ring Age records that local governments no longer recognized.
  PROSE

  prose <<~PROSE, section: :operations, heading: "A Network Rebuilt by Hand"
    Early relay stations could not reproduce the ring's automatic signal lattice. Operators scheduled narrow windows, repeated messages across several hops, and marked which parts had arrived through inference rather than clean reception. Couriers carried written copies between the ends of unreliable links.

    Hab Meridian became a major exchange because its surviving arrays could receive several bands and its ports could dispatch repair crews. Glasswake became the surface reference point for the first route. Neither place controlled the communities it connected.
  PROSE

  prose <<~PROSE, section: :legacy, heading: "Consent to Contact"
    Some habitats declined the first call. Others accepted messages and refused visitors, or opened one dock under local rules. Reconnection crews initially treated those limits as temporary fear. The forced entries and route disputes that followed made consent a system-wide political question during the Contested Reach.
  PROSE
end

relate :rel_rekindling_caused_ring_collective, :caused, :the_rekindling, :ring_collective do
  prose "Repeated contact among autonomous ring habitats produced the assembly that became the Ring Collective."
end
