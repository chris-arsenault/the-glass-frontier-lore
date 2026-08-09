concept :ghost_pharmacology do
  name "Ghost Pharmacology"
  tags :resistance, :medicine, :dependency
  prominence :recognized

  prose <<~PROSE
    Resistance chemists make substitute drugs for people whose coalition guardians monitor every dose. The substitute leaves the expected markers in blood while changing the neurological effect. A guardian sees the regimen it prescribed; the person taking it feels something else.

    Many #{ref :the_managed, "Managed"} citizens first contact the #{ref :the_dead_counties, "Dead Counties"} to obtain one of these substitutes. Most cannot simply stop their existing medicine without withdrawal, a clinic visit, or both.
  PROSE

  prose <<~PROSE, section: :limits, heading: "How Long A Match Has To Hold"
    A substitute has to match the old drug until five of its half-lives have passed. At that point about a thirtieth of the original dose remains. A compound that matches the first day's peak and diverges late looks like a missed dose, which brings a review, a visit and a changed regimen.

    Testing takes a chart of one paid body on the old regimen, a second chart of the same body on the substitute, and a monitor old enough to make the comparison without reporting it. #{ref :cabin_creek_bench, "The Cabin Creek bench"} runs one compound at a time through all five half-lives. Most batches fail.

    The benches use five half-lives because the old pharmacology manuals use that interval. The same books supply the wiring diagrams and calibration tables that keep their monitors running.
  PROSE
end
