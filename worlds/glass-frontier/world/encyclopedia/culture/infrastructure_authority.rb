encyclopedia :infrastructure_authority do
  name "Warrants"
  kind :culture
  subkind :collective_standing
  status :complete
  topics :governance, :rebuilding, :"ring-era", :"social-structure"
  prevalence :uncommon
  appears_when any: { place: [:sealed_hab, :urban] }
  summary "Warrants give works crews and boards the right to inspect, repair, or cut air, water, spin, power, and inherited elven systems wherever those works pass. Each warrant follows one named line through every property and jurisdiction it crosses."
  integration "Ownership and local government yield access to a crew that names the line on its warrant; the authority ends at the system's physical boundary and the works board answers for every entry and cut"
  formal_register "The standing's instruments keep the old forms — the maintenance warrant 'follows the work', a crew at a private door 'names the line' it has come for, and the gravest invocation, spoken rarely and obeyed always, is the cut declaration: 'the system requires it'"

  descriptive_identity(
    manner: "Works crews name the line at every threshold, mark each opened " \
            "access, record what they touched, and sign the door register " \
            "before leaving.",
    appearance: "The warrant plate carried at the chest, the line's mark " \
                "chalked or tagged at every access the crew opens, and the " \
                "works registers — what was entered, touched, and left — " \
                "signed at the door on the way out.",
    hospitality: "A householder gives a warranted crew passage, light, and " \
                 "water along the line. The crew signs the register and " \
                 "leaves the access door as it found it."
  )

  prose <<~PROSE
    Works boards hold warrants for air, water, spin, power, and the #{encyclopedia_ref :elves, "elven"} substrates beneath them. A crew arriving at a private threshold names the line, shows the warrant plate, and gains access to the rooms and panels through which that system runs. A cut declaration — *the system requires it* — authorizes the crew to close valves, clear rooms, or interrupt service. #{encyclopedia_ref :habitat_sovereignty, "Habitat charters"} preserve this right of way because one line may cross hundreds of private rooms.

    Recovered elven maintenance orders supplied the warrant form and register discipline. Modern boards keep the authority by limiting it to the named works. Crews chalk or tag every opened access, record what they touched, restore the door, and sign out. The board answers for damage, improper entry, and system failure. Households owe a working crew passage, light, and water along the line. Works festivals reverse that daily intrusion for one day: pump rooms are garlanded, access doors dressed, and the year's register closed in public.
  PROSE

  cue "The crew at the great house's door names the line — the trunk main, under the east wing — and the household that would fight a council writ for a season stands aside for the warrant plate, because everyone's air is downstream of somebody's corridor."
  cue "At the manufactory gate, the crew speaks the cut declaration, records the owner's protest, and turns the named valve under the warrant."
  affordance "A maintenance warrant lets one works board inspect and repair a continuous system across every property and jurisdiction on its route."
  pressure "The works board compensates damage and investigates any entry beyond the named line, so every crew marks access and signs its work at the door."
  variation "Hab works boards hold the standing at hull scale; the district and route authorities carry it along their systems' lengths; and the joint boards over shared elven substrates are where the standing does its quietest, heaviest diplomatic work."
  variation "The works festivals — pump rooms garlanded, access doors dressed, the year's registers closed with ceremony — vary by settlement and system, and the crews' dry fondness for being thanked annually at doors they are argued with daily is a fixture of every maintenance culture."
end
