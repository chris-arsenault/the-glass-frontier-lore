resource :seven_new_load do
  name "The Seven-New Load"
  summary "The Seven-New Load is sealed cargo aboard Nine Holds at Keelward, entered as Korvathi insulating tile but answering the ship's sounder as instrument-grade ringglass on alternating tests."
  subkind :material
  type_of :ringglass
  status :complete
  tags :transport, :trade, :resonance, :materials
  prominence :marginal

  descriptive_identity(
    appearance: "A sealed cargo in the replacement seventh hold of Nine Holds, covered by a valid Korvathi ceramic manifest.",
    working: "The ship's sounder records insulating tile and instrument-grade ringglass responses in alternating tests; Keelward will not release it into a warehouse and the insurer will not cover an exterior opening.",
    risks: "The consignee refuses the ringglass duty while the partners charge for a voyage the ship cannot finish with the cargo still attached."
  )

  prose <<~PROSE
    #{ref :nine_holds, "*Nine Holds*"} is berthed at #{ref :keelward, "Keelward"} while three offices argue over the Seven-New Load. The sealed cargo entered as Korvathi insulating tile. Its receiver declared instrument-grade #{encyclopedia_ref :ringglass, "ringglass"} after the ship crossed the inner corridor. The ship's own sounder records both responses in alternating tests.

    Keelward will not release the box into a warehouse. The insurer will not cover an exterior opening. The consignee has produced a valid ceramic manifest and refuses the ringglass duty. The partners have isolated Seven-new, discharged every other hold, and begun charging the consignee for a voyage the ship cannot finish while the cargo remains attached.
  PROSE

  gm_note :appears, "The sealed load alternates between insulating-tile and instrument-grade ringglass responses under the ship's own sounder."
  gm_note :triggered_by, "Opening it outside is excluded by the insurer, while Keelward refuses to release the box into a warehouse."
  gm_note :complicates, "The consignee holds a valid ceramic manifest and refuses the ringglass duty while Nine Holds charges for every day the cargo keeps the ship at berth."
end

relate :rel_nine_holds_carries_seven_new_load, :carries, :nine_holds, :seven_new_load do
  prose "The sealed load remains isolated in the replacement seventh hold."
end

relate :rel_seven_new_load_located_in_keelward, :located_in, :seven_new_load, :keelward do
  prose "The load remains aboard Nine Holds while the freighter is berthed at Keelward."
end
