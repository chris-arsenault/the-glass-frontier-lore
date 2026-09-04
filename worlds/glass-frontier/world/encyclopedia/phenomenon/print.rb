encyclopedia :print do
  name "Print"
  summary "Print is the readable text raised on nearby hulls by a Lithren tablet in transit. Lines from the stone crystallize across bare cold metal, including breaks and damage, and last a few minutes before sublimating. Couriers post their passage times so station crews and archivists can record it."
  kind :phenomenon
  subkind :phenomenon
  status :complete
  log "2026-08-31 — Renamed Cold Archive Weather to Print; the observable reproduction of a tablet's text gives the effect its direct archival working name."
  topics :"outer-system", :archives, :mystery, :resonance
  prevalence :rare
  appears_when all: { place: [:cold, :archive] }
  medium "Sealed cold-country hulls and station shells within a few spans of a Lithren text in transit — bare cold metal takes the print; warmed or coated surfaces stay clear"
  nature "A resonance printing: the text's inscription pattern couples to vapor freezing on nearby cold surfaces, and the frost crystallizes along the pattern — legible lines of the text, at hand scale, lasting minutes"
  content "Passages of the transiting text itself, faithful to the original down to its damage — a cracked line frosts cracked — in the script the Lithren ruins share"
  known_forms "The passing print of a courier run, a hull's length of lines gone in minutes; the dock print, denser and longer-lived, where a text waits in a cold hold; and the archive halo, the standing weather around Lithren's own ruins where the texts still lie in numbers"

  descriptive_identity(
    signs: "A print arriving on a sealed hull in lines rather than feathers — " \
           "ordered rows crystallizing across the cold plating at reading " \
           "height, holding their shapes against the usual bloom of ice.",
    effects: "The lines are legible passages of the transiting text, printed at " \
             "hand scale for the minutes before sublimation smooths them; a " \
             "denser wait — a text in a cold hold overnight — prints deeper " \
             "and lasts to morning.",
    hazards: "The print does not damage a hull, but it exposes the text to " \
             "every bare plate and observer in range; Lithren cargo therefore " \
             "travels on open manifests through the cold stations."
  )

  prose <<~PROSE
    A Lithren tablet in transit prints its inscription in frost on sealed cold hulls nearby. Ordered rows form across bare plating at reading height and reproduce the original script, including cracked or missing strokes. The print lasts only until sublimation smooths it away. Warmed and coated surfaces remain clear; colder surfaces and longer dwell times produce deeper, longer-lived lines. Trials with a tablet and a written transcription established that only the inscribed stone raises the frost. Archive catalogs call the effect resonance printing, although the coupling between stone and freezing vapor remains unmeasured.

    Cold stations post the passage times of Lithren couriers. Crews meet them outside with raking lamps and cameras, keeping breath and exhaust away from the plating while the print develops. Pelhari acquisitions receive an overnight cold layover: a dock print can survive until morning and sometimes carries intact strokes from a damaged face of the tablet, giving archivists a second reading surface. The same reach makes discreet carriage impossible. Route rules require every Lithren text on the manifest before it enters cold-station range.
  PROSE

  cue "The station's board posts the courier run for the third hour, and at the third hour the crews are out on the gantry with lamps as the print arrives — ordered lines crystallizing down the shell at reading height, older than every record, gone in minutes."
  cue "In the cold hold at Pelhari the scholars work by lamplight at dawn, photographing the night's print — and one plate shows a clean line where the tablet itself carries only the crack."
  affordance "Archivists schedule cold layovers to obtain a second reading surface from damaged tablets; deep dock prints can preserve strokes obscured on the stone itself."
  pressure "Every bare cold plate in range receives the print, so route staff clear observation areas and require Lithren cargo on open manifests."
  variation "Passing prints are the routes' brief public occasions; dock prints are the archives' working tool; and the standing halo around Lithren's own ruins frosts the research stations' shells in slow rotation, which the resident scholars treat as both library and weather report."
  variation "Prints vary by tablet — some texts print faint, a few print past their own damage — and the Pelhari catalog's frost-plate index is, by its keepers' admission, the closest thing to a census of what the stones still hold."
end
