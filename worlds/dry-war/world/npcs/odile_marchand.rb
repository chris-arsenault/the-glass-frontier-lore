npc :odile_marchand do
  name "Odile Marchand"
  tags :surveillance, :governance, :legibility
  prominence :marginal

  prose <<~PROSE
    #{ref :caretaker, "Caretaker"}'s district sound officer for Detroit, holding the ambience programme's schedule, its platform arrays and the acoustic return on every heritage session. She has had the post since 2085 and books #{ref :ste_anne_belfry, "the Ste. Anne belfry"} for eleven or twelve sessions a year.

    Her standing concern is the programme's cost line. Rope stock, bearings and the tower's insurance sit against a mood delta that has thinned in each of the last four returns, and a programme that stops clearing its threshold gets folded into recorded ambience, which costs almost nothing to run.
  PROSE

  prose <<~PROSE, section: :perception, heading: "What She Signs"
    Marchand signs the sound-pressure level, time above threshold, session length, raise and lower, complaint volume by block, sleep-latency telemetry and mood index for households inside the measured radius. She can read the roster, so she knows the eight names and their ages, and she has twice moved a session to accommodate #{ref :cecile_ouellette, "Ouellette"}'s hip.

    Her return collapses the order of the bells into totals. Three quarters of an hour of changing orders and the same time spent sounding in scale order produce identical figures when their loudness and duration match. She reads the nine cancellations in #{year :now} as an ageing band and files them under programme risk.

    #{ref :the_gratiot_solo, "The Gratiot Solo"} reached her as one query from a care team: had the platform speakers at Gratiot and Mack run at scheduled level on eleven consecutive evenings. They had.
  PROSE
end
