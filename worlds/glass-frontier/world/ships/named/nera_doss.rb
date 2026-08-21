transport :nera_doss do
  name "Nera Doss"
  subkind :vessel
  capacity "Four crew, two line workers, and six folded recovery panels"
  status :complete
  tags :transport, :orbital, :materials, :resonance
  prominence :marginal

  prose <<~PROSE
    *Nera Doss* is Ravel's outer-line tender. The founding crew joined the names of its two households when they converted the vessel for the first safe spread across the plume passage. Its short hull fits between deployed panels, with four broad guide rings protecting the cabin from loose mesh.

    Two mechanical arms gather released panels and feed them into wet-fold lockers. A kinetic array holds the tender against a loaded net while line workers cut snarls from the boom. The drive has enough reserve to tow one damaged panel clear of the hab before the next web opens.

    The present crew has fitted a sealed rack beneath the cabin for warm catch from the latest passages. During the next crossing, the rack will expose one tray to the plume field while keeping its pressure and temperature fixed.
  PROSE
end
relate :rel_nera_doss_operates_in_ravel, :operates_in, :nera_doss, :ravel, since: 2435 do
  prose "Nera Doss tends Ravel's outer collector lines and recovers released panels."
end


relate :rel_nera_doss_operates_in_keel, :operates_in, :nera_doss, :keel, since: 2435 do
  prose "Nera Doss carries Ravel's sample trays and repair panels along a short Keel branch between plume passages."
end
