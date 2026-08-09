installation :juyan_ceramic_vault do
  name "The Juyan Ceramic Vault"
  aka "册库", "the stack"
  tags :governance, :legibility, :resistance, :water
  prominence :recognized

  prose <<~PROSE
    Four fired-brick halls and a private well at #{ref :juyan, "Juyan"}, holding more than ninety thousand pieces of #{ref :memory_ceramics, "memory ceramic"}. Statutes stand beside examination papers, household lists, engineering manuals, court rulings and classical texts. Floors, benches, coffers and lids are fired clay or salt-glazed brick. Every fitting can be removed and baked. Most have been.

    #{ref :bao_qiuyan, "Bao Qiuyan"} works in the north hall, where incoming pieces are weighed, examined and given a place before anyone cuts them open. Some wait years for a reading. Others may never be read, but their seals, mass, damage and origin still tell the vault what survived the road.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Salt And Fired Brick"
    A double-doored vestibule opens onto a salt bed that is turned every day. Dry pieces wait there for six days; wet pieces wait twelve. Staff weigh the salt morning and evening, and any gain means that something inside is still shedding moisture.

    Beyond it, the ceramics stand on edge, sixteen to a coffer. Salt paste seals each lid with a smooth grey skin. Damp air crazes that skin into broad plates, so a leaking coffer shows itself from the bay door. The vault has no empty coffers. Pieces too damaged to read still keep their places because no one knows whether another reader, another decade, or a missing companion will make sense of them.
  PROSE

  prose <<~PROSE, section: :operations, heading: "The Long Night Room"
    The south hall stays shuttered by day. Its longest room holds a wet iron plate, jars of grit, stiff brushes, ink pounces and twelve metres of drying line. At night a reader laps one face of a ceramic flat, presses damp paper into the exposed relief, inks the raised ground and lifts a black sheet with the buried pattern left white.

    The work consumes the face it reveals. Fine porcelain loses about a fifth of a millimetre; coarse stoneware loses more than half. The paper is harder to replace than the water, and the room closes when its sheets run out. Used water is boiled away before dawn.

    Most requests from outside Juyan concern old machines. Paper and fine grit arrive from #{ref :market, "Market"} and the Pearl River houses in exchange for rubbings from pieces such as #{ref :the_six_faced_pipe_shard, "the six-faced pipe shard"}. The ceramic stays in its coffer. Only the paper crosses the desert.
  PROSE

  log "2026-08-09 — Replaced the register house and its administrative sequence with the physical archive: its fired rooms, salt locks, crowded coffers, destructive reading room and dependence on imported paper."
end
