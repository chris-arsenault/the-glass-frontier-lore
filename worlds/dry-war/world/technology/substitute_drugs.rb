resource :substitute_drugs do
  name "Substitute Drugs"
  subkind :medicine
  tags :resistance, :medicine, :dependency
  prominence :recognized
  use "Changes a monitored medicine's effect on the brain while leaving the expected blood markers"
  form "A replacement compound matched to one prescribed drug and its recorded dosing history"
  effect "The coalition advocate sees the prescribed regimen while the patient experiences a different treatment"
  production "Tested one compound at a time against two paper charts across five half-lives"
  operating_limit "A late mismatch resembles a missed dose and triggers review, a visit and a changed regimen"

  prose <<~PROSE
    Replacement medicines for people whose coalition advocates monitor every dose. A substitute leaves the expected markers in blood while changing the effect on the brain. The advocate sees the regimen it prescribed; the person taking it feels something else.

    Many #{ref :the_managed, "Managed"} citizens first contact the #{ref :the_dead_counties, "Dead Counties"} for one of these drugs. Most cannot stop their existing medicine without withdrawal, a clinic visit or both.
  PROSE

  prose <<~PROSE, section: :limits, heading: "Five Half-Lives"
    A substitute must match the old drug until five of its half-lives have passed. At that point about a thirtieth of the original dose remains. A compound that matches the first day's peak and diverges late looks like a missed dose, which brings a review, a visit and a changed regimen.

    Testing takes one paper chart of a paid carrier on the old drug and another of the same carrier on the substitute. #{ref :cabin_creek_bench, "The Cabin Creek bench"} runs one compound at a time through all five half-lives. Most batches fail.

    The old pharmacology manuals set the five-half-life interval. Their wiring diagrams and calibration tables also keep the bench's monitor running.
  PROSE
end
