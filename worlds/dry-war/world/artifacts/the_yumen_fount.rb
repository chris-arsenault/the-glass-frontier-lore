artifact :the_yumen_fount do
  name "The Yumen Fount"
  tags :trade, :legibility, :governance
  prominence :forgotten

  prose <<~PROSE
    The metal type used at #{ref :yumen_gate, "Yumen Gate"}: figures, measure characters and the recurring words on the station's fee board. Each line of the board is locked into its own shallow tray. Old lines remain in the case room after their prices change, with the month scratched into the tray's rim.

    The type shows #{elapsed 2071, approx: true} of handling. The 4 lost the corner of its foot in 2083. The 7 has printed dark in its centre since somebody cleaned it with the wrong spirit. Three replacement measure characters stand a hair too high and bruise the paper. Those flaws appear on the posted fees and on every certificate printed from the same case.
  PROSE

  prose <<~PROSE, section: :history, heading: "Three Castings"
    The station has received three castings, in 2071, 2079 and 2086. Pearl River workshops filled each order from whatever matrices were in their own cases and sent no numbered record with the shipment. A fresh casting has no wear to distinguish it, while an old printed line may match letters that were melted down years ago.

    #{ref :ma_renqing, "Ma Renqing"} keeps a quarto book of monthly impressions beside the trays. When a traveller challenges a fee, she can compare the certificate's broken corners and clogged counters with the page for that month. The marks can prove that Yumen printed a line. They cannot prove when the type itself was cast.
  PROSE

  log "2026-08-09 — Replaced the gate schedule, letter-matching procedure and sort book as separate subjects with the worn metal fount that produces all three bodies of evidence."
end
