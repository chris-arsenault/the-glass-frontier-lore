installation :lot_forty do
  name "Forty"
  playable_as :chronicle_location
  aka "Lot Forty"
  subkind :workshop
  function "Enclosed cutting, quarantine, and live-system access for captured vessels"
  status :complete
  tags :salvage, :transport, :materials, :danger
  prominence :marginal
  omit_facts :maintained_by

  prose <<~PROSE
    Forty is Brake's largest enclosed cutting bay. Its official designation, Lot Forty, comes from the salvage grid painted across the central fragment. Two pressure doors open around a complete small vessel, and movable walls divide the interior into clean work, hot cutting, quarantine, and recovered cargo.

    Overhead rails carry tools and sealed observation cabins. Floor anchors accept hulls in almost any orientation. Orange paths keep people clear of moving wall sections and lead directly to independent shelters at both ends.

    The captured medical vessel stands outside the main doors under separate utilities. Forty has become its supply lock, records room, and clinical staging area while Brake studies the sleeping patients.
  PROSE

  log "2026-08-21 — Made the cutter shorthand Forty primary while retaining the salvage-grid designation Lot Forty."
end
relate :rel_lot_forty_located_in_brake, :located_in, :lot_forty, :brake, since: 2435 do
  prose "Forty handles Brake's largest enclosed and quarantined salvage work."
end
