incident :hospital_hull_recovery do
  name "Hospital Hull Recovery"
  summary "Hospital Hull Recovery is Brake's 2435 capture of a powered medical vessel carrying twelve occupied recovery capsules."
  subkind :discovery
  type_of :salvage_recovery
  date 2435
  status :complete
  tags :salvage, :ecology, :transport, :mystery
  prominence :marginal

  descriptive_identity(
    marks:
      "The vessel rides beside Forty on its own power, water, and " \
      "clinical monitoring, twelve patients asleep with stable vitals " \
      "and synchronized cycles. Ownership claims on it are suspended, " \
      "its pharmacy issues medicine only to its own clinical systems, " \
      "and Five Bolts keeps the one tow line approved for an emergency " \
      "separation.",
    stakes:
      "Cutter crews press for the drive record behind the clinical " \
      "deck while ward representatives push to join the hull to Brake " \
      "before its stores fail; the medical watch keeps both behind the " \
      "patient marks on Voss's intake board. Opening a capsule waits " \
      "on a patient history absent from every cabinet cleared so far."
  )

  prose <<~PROSE
    Brake captured a medical vessel with warm surgical rooms, stocked pharmacies, and twelve occupied recovery capsules. The patients carry stable vital signs and synchronized sleep cycles. Its navigation record ends during the Bitter Reach, while wear on the outer hull records many years of later travel.

    The vessel remains beside Forty on independent power, water, and clinical monitoring. Ira Voss is tracing the patient records through sealed cabinets. Five Bolts holds the hull clear of every inhabited anchor and maintains the only tow line approved for an emergency separation.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Custody and Care"
    Brake treats the patients as living arrivals rather than salvage. Intake workers have suspended every ownership claim on the vessel and issue medicine from its pharmacy only to its own clinical systems. The recovery capsules can be opened from the surgical room, but the surviving instructions begin with a patient history absent from the cabinets Voss has cleared.

    Cutter crews want access to the drive record and sealed machinery behind the clinical deck. Ward representatives want the vessel joined to Brake before its stores fail. The medical watch keeps both requests behind the patient marks on Voss's intake board.
  PROSE

  gm_note :appears, "Work at Brake that touches salvage or ward business draws a request to carry someone's case past the medical watch: cutter crews want the drive record behind the clinical deck, and ward representatives want the hull joined to the settlement before its stores fail."
  gm_note :triggered_by, "Talk of waking one of the twelve meets the first line of the capsule instructions, which calls for a patient history absent from every cabinet #{ref :ira_voss, "Voss"} has cleared. The surgical room will open a capsule without it."
  gm_note :complicates, "An alarm anywhere in the yard puts the vessel on one decision: #{ref :five_bolts, "Five Bolts"} holds the only tow line approved for emergency separation, and cutting the hull loose takes twelve sleeping patients away from Brake's power, water, and monitoring."
end

relate :rel_hospital_hull_recovery_manifests_brake, :manifests_at, :hospital_hull_recovery, :brake do
  prose "Brake holds the medical vessel outside Forty while its patients remain asleep."
end

relate :rel_ira_voss_participated_hospital_hull_recovery, :participated_in, :ira_voss, :hospital_hull_recovery do
  prose "Ira Voss leads the occupied-hull intake and patient-record search."
end

relate :rel_five_bolts_participated_hospital_hull_recovery, :participated_in, :five_bolts, :hospital_hull_recovery do
  prose "Five Bolts captured the vessel and keeps it separated from inhabited anchors."
end

relate :rel_lot_forty_hosts_hospital_hull_recovery, :hosts, :lot_forty, :hospital_hull_recovery, since: 2435 do
  prose "Forty supplies the recovery's records room, clinical staging area, and independent utilities."
end
