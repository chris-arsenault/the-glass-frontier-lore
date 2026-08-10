faction :the_dead_counties do
  name "The Dead Counties"
  tags :resistance, :autonomy, :legibility
  prominence :recognized

  prose <<~PROSE
    Appalachian communities across West Virginia, eastern Kentucky and the Tennessee uplands. Coalition maps assign every road and household to an administrator, but inspectors arrive at intervals and most machines report only county totals. Across this region, rule comes and goes.

    Their machines run about twenty years behind the cities: diesel plant, local fibre, old CNC, radio, printed manuals and medical hardware made before implants. A town buys nothing unless somebody there can fix it.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Filing In Plain Sight"
    They file. Every county sends the figures expected from a dying rural community: late returns, a plausible rise in chronic illness and a population falling at the proper rate. Producing those figures is a municipal job with a budget line.

    Behind those totals, county workshops remove implants, build #{ref :implant_decoys, "implant decoys"}, make #{ref :substitute_drugs, "substitute drugs"} and fabricate obsolete electronics. Aggregate reports hide which valley holds each shop.

    #{ref :caretaker, "Caretaker"} expects the counties to empty gradually and treats interference as unkind. County clerks keep sending the figures that confirm the forecast.
  PROSE

  prose <<~PROSE, section: :structure, heading: "One Valley At A Time"
    One town's current cannot be balanced from the next. A mill slows when the clinic sterilizer heats. Workshops keep two lathes because neither takes the other's tools, and a mechanic who knows both is worth more than either machine. At #{ref :cabin_creek_bench, "Cabin Creek"}, a severed bedside monitor draws on paper because nothing else in the room can receive its readings.

    These mismatches waste power and parts. They also keep a machine taken from one workshop from reading or directing the whole county. The cost arrives as winter outages, duplicate stock and hours spent fitting one maker's parts to another's. Where a valley has no hidden bench or #{ref :orphan_machines, "old machine"} to protect, people connect the grids again.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "What They Want"
    They do not expect to overthrow anything. They want a place where a person can make a catastrophically stupid decision and own the result.

    The #{ref :the_saints_of_plenty, "Saints"} call this deprivation mistaken for freedom. The Dead Counties call the Saints decadent and expect the coalitions to tame them within a generation.
  PROSE
end
