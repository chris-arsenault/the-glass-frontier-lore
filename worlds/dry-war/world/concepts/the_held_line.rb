concept :the_held_line do
  name "The Held Line"
  tags :resistance, :prediction, :legibility, :autonomy
  prominence :recognized

  prose <<~PROSE
    Every #{ref :the_choir, "Choir"} member in the Detroit district holds one line: a numbered sequence of substitutions for ordinary days, taught by mouth over about a year, written nowhere, and known to no other member. Five positions in the sequence are learned as starting marks, each named for one of the bell methods used at the district call. Entry nine of a line might be delay the evening dose by eleven minutes. Entry ten, ride one stop past the transfer and walk back. Entry eleven, buy the ten-kilo sack of flour rather than the four.

    Each entry is a choice the member actually makes, for which an ordinary reason is available, and which the #{ref :neural_implants, "implant"} reports truthfully to #{ref :predictive_governance, "the district models"}. A line carries no statement of purpose, no other member's entries, and no description of the pattern its entries belong to. A member asked what they are doing can answer completely and give up eleven minutes.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "Counting From The Call"
    At a #{ref :the_ring_call, "ring call"}, the bell method names one of the five starting marks in every member's line. The rounds before the method give the number of days to wait before the first entry. Each starting mark has a stopping point learned with it. A member begins at the named mark after the stated wait, advances one entry each morning and stops at that point.

    Members keep the days since the call on a pegged board, usually a cribbage board, advancing one hole each morning and starting again at the next session. A household in the district may own a game, and a game left in progress is not a record. Nothing corrects the count between calls. A day skipped stays skipped, and a member who takes the wrong wait runs the right entries on the wrong days. The board shows a peg in a hole. It does not show whether the hole is the right one.
  PROSE

  prose <<~PROSE, section: :limits, heading: "What A Line Costs"
    #{ref :caretaker, "Caretaker"} records a delayed dose as a compliance variance and opens a medication review on the third variance in a quarter. A line that delays the same dose repeatedly therefore changes the regimen it was built around. #{ref :ghost_pharmacology, "Ghost pharmacology"} reaches the Lakes districts irregularly and covers a variance only when a courier has come through.

    Transport entries cost fares and standing time. Purchase entries cost money on a household account Caretaker reads. Entries built for a workplace that has since closed, a route that has been redirected, or a body that has aged out of a dose become impossible, and the member either improvises — producing a reading that belongs to no line at all — or stops. No other member learns which.
  PROSE

  log "2026-08-09 — The wait and progress through the selected part of a line are kept as a running count of days from the last call, pegged rather than written, after the traverse board of pre-instrument navigation: a helmsman logged each interval by moving a peg, error accumulated unchecked, and the reckoning was re-fixed only at the next observation. That fixes both the physical form of the tally and the failure mode — a wrong wait is undetectable from the board."
end
