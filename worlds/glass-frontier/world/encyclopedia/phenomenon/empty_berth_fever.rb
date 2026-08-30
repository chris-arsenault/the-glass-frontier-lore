encyclopedia :empty_berth_fever do
  name "Empty-Berth Fever"
  summary "Empty-Berth Fever is the social condition that takes hold among stranded passengers in a dock settlement's unused rooms — occupation hardening into fierce inherited-feeling ownership within days, complete with improvised registries and defended thresholds. Dock wardens treat an accumulating strand like weather."
  kind :phenomenon
  subkind :social_condition
  status :complete
  topics :"social-structure", :"ring-hab", :governance
  prevalence :uncommon
  appears_when all: { place: [:dock, :sealed_hab] }
  medium "Stranded transient populations in dock settlements' vacant berths and rooms"
  nature "A rapid social hardening in which temporary occupation acquires the felt weight of inheritance, arising wherever strandings accumulate past a threshold the wardens can chart"
  hazard "Fevered claims collide with returning owners and each other, and clearing a fevered gallery costs more goodwill than any dock keeps in stock"

  descriptive_identity(
    signs: "Stranded passengers begin improving rooms they occupied on sufferance — name " \
           "boards appear, thresholds acquire mats and door customs, a corridor registry " \
           "materializes in someone's careful hand — and the vocabulary shifts from " \
           "'the room I'm in' to 'ours' inside a week.",
    effects: "A fevered gallery organizes with startling speed and real competence — " \
             "rotas, disputes courts, threshold law — the whole apparatus of settled " \
             "life, built by people whose ships may board tomorrow.",
    hazards: "The claims feel like inheritance and are defended accordingly, and the " \
             "collision arrives on schedule with the backlog's clearing — the returning " \
             "traffic that ends every strand finds homes where its berths were."
  )

  prose <<~PROSE
    Strand enough travelers in a dock settlement — a flood season, a falling year's compressed windows, a corridor closure — and the vacant rooms begin to be settled rather than occupied. Empty-berth fever is the documented pattern: within days of a strand passing the thresholds the wardens now chart, temporary occupation hardens into ownership that feels inherited. Name boards go up. Thresholds acquire mats, door customs, and defense. A corridor registry appears in someone's careful hand, disputes get their own bench, and passengers whose ships may board with the next window speak of rooms held a fortnight in the register other cultures reserve for the family stretch of a channel.

    The fever's strangeness is its competence. Fevered galleries organize fast and well — water rotas, watch rounds, a threshold law with real nuance — reproducing settled life's whole apparatus at a speed that has made the phenomenon a standing subject for the capital's social surveys, whose literature divides over whether the fever is displacement's pathology or settlement's basic reflex observed at high speed. The dock settlements, which live with it, plan for it like weather: wardens chart strand-size against the fever's onset, the clearing of a fevered gallery when traffic resumes is staged with the delicacy of a cordon evacuation, and the wiser docks have stopped fighting the registries and started countersigning them — a fevered corridor's own careful book, taken into the ward record with thanks, being the cheapest peace any dock ever bought.
  PROSE

  cue "The stranded gallery has grown name boards, threshold mats, and a corridor registry in a careful hand, and the fortnight-resident at the third door explains the local threshold custom to a newcomer with a settler's patience."
  cue "At the ward office, the duty warden reads the strand tally against a worn chart and starts the fever paperwork before the first name board goes up."
  affordance "The fever's competence is usable — a fevered gallery polices itself, keeps its own registry, and can be governed through its improvised institutions, and docks that countersign the corridor books clear their backlogs with the registries as the peace terms."
  pressure "The claims feel like inheritance to the claimants and like squatting to the returning traffic, and the clearing collision arrives on the same schedule as the relief everyone was praying for — the docks' oldest managed tragedy."
  variation "Flood-season strands fever fast and clear clean; the long strands of falling years build galleries that survive their clearing as chartered neighborhoods, and two of Clearance Eight's wards began exactly that way."
  variation "The survey literature's two schools read the fever as pathology and as settlement's reflex respectively, and both cite Clearance Eight's chartered wards as their best evidence."
end
