creature :keel_yard_herd do
  name "The Keel Yard Herd"
  summary "The Keel Yard Herd is a large cinderback herd lodged in the utility culverts beneath Shadewell's outer cargo yard. A damaged cold-store return keeps drawing it back from the screened route to an unused quarry."
  subkind :animal
  type_of :cinderback
  status :complete
  tags :"outer-system", :ecology, :danger, :trade, :resonance
  prominence :recognized

  prose <<~PROSE
    A large herd has settled below #{ref :shadewell, "Shadewell"}'s outer cargo yard after a damaged cold-store return began warming the subgrade. The first animals entered through a storm drain. Young now occupy the culvert behind the Keel lift's secondary radiator bank.

    Port workers cannot seal the drain until the young are moved and cannot run the radiator at full load while adults crowd its exhaust shade. Highland handlers have built a screened path toward an unused quarry. The herd leaves the path whenever the cold-store pumps start, following the buried return toward the yard again.
  PROSE

  gm_note :appears, "Young animals occupy the culvert behind the secondary radiator bank while adults crowd its exhaust shade, leaving the port unable to seal the drain or run the radiator at full load."
  gm_note :triggered_by, "Starting the cold-store pumps turns the herd off the screened quarry path and back toward the buried return, with the handlers following."
  gm_note :complicates, "The herd has already torn three flexible cooling lines open while following the leak, putting public repairs ahead of every commercial job at Coldside Bench."
end

relate :rel_keel_yard_herd_inhabits_ashvane, :inhabits, :keel_yard_herd, :ashvane do
  prose "The herd belongs to Ashvane's highland cinderback population."
end
relate :rel_keel_yard_herd_manifests_shadewell, :manifests_at, :keel_yard_herd, :shadewell do
  prose "The herd currently occupies the utility culverts beneath Shadewell's outer cargo yard."
end
relate :rel_keel_yard_herd_resonates_heat_hauler, :resonates_with, :keel_yard_herd, :third_radiator do
  prose "Parked haulers provide shade and warm machinery that can turn the herd across a road or yard."
end
