# Schema — The Dry War's additions to craft/schema/base.rb, which already
# declares the entity kinds, effect verbs and the shared relation taxonomy.
#
# Add here only what this setting needs and the base does not carry: relations
# that mean something specific to it, its tag vocabulary, and any section
# heading the base lacks. Every tag used in an entry must be declared here
# first — the validator rejects undeclared tags.
schema do
  # This world was drafted in assisted sessions from a worldbuilding
  # conversation, so a block that does not say who wrote it was machine-drafted.
  drafted_by_default :ai_human

  # Symbiosis is a physical relationship here, not a metaphor, and legibility is
  # a form of power — both need edges the base taxonomy has no reason to carry.
  relation :symbiotic_with, category: :technical, temporal: true
  relation :severed_from, category: :technical, temporal: false
  relation :models, category: :technical, temporal: true
  relation :evades, category: :social, temporal: true

  # A formal objection filed with an authority that does not recognize the filer,
  # expecting no reply and keeping a copy. The Preservationists do this as a
  # matter of practice, and the filings are the record they trust.
  relation :petitions, category: :organizational, temporal: true

  # Sections the base vocabulary has no reason to carry. Both gods produced
  # religions nobody established, and both remade what a person is.
  section_heading :religion
  section_heading :identity

  # The house tic, banned on sight. This world's premise document was generated in
  # a conversation with a model whose paragraph shape is the contrast pair — X
  # believes A, Y believes B, and then a short closer telling the reader what to
  # feel about the pair. The contrast is often real content. The closer never is:
  # it is the narrator stepping outside the encyclopedia to wink.
  #
  # An entry may report that two parties disagree, at length, with both positions
  # stated fairly. It may not then explain the disagreement's significance. See
  # guidance/authoring-method.md for why this defect is structural here rather
  # than accidental.
  ban_phrase "which is the point", "narrator verdict — state the fact and stop"
  ban_phrase "that is the point", "narrator verdict — state the fact and stop"
  ban_phrase "that's the point", "narrator verdict — state the fact and stop"
  ban_phrase "which is precisely", "narrator verdict"
  ban_phrase "neither sees", "the contrast-pair closer; report both positions and stop"
  ban_phrase "sees the irony", "the contrast-pair closer; report both positions and stop"
  ban_phrase "neither is adequate", "verdict on two names — give the names and let them stand"
  ban_phrase "both are inadequate", "verdict on two names — give the names and let them stand"
  ban_phrase "that is what makes", "narrator explaining its own material"
  ban_phrase "that's what makes", "narrator explaining its own material"
  ban_phrase "that is most of the horror", "narrator assigning the reader an emotion"
  ban_phrase "that is the horror", "narrator assigning the reader an emotion"

  tag :agriculture, "Farming, soil, crops, food systems"
  tag :autonomy, "Human self-determination and what happens to it"
  tag :biotech, "Engineered biology as infrastructure"
  tag :catastrophe, "The Breach and what it left"
  tag :computation, "Machine cognition and the plants that run it"
  tag :dependency, "Being unable to leave a system that keeps you alive"
  tag :ecology, "Living systems treated as a whole"
  tag :energy, "Power generation and its costs"
  tag :governance, "Authority, administration, who decides"
  tag :hybridization, "Machine and fungal systems touching"
  tag :identity, "Who a person is, and who the system thinks they are"
  tag :legibility, "Being readable by a governing intelligence"
  tag :legitimacy, "The Mandate question — who may rightly rule"
  tag :locality, "地方性 — the particular against the general"
  tag :medicine, "Health, implants, regeneration, pharmacology"
  tag :military, "Organized force and the things that replaced it"
  tag :prediction, "Forecasting behaviour and acting before it happens"
  tag :religion, "Reverence, ritual, and what people do with gods"
  tag :resistance, "Refusal, and the cultures built around it"
  tag :surveillance, "Observation as governance"
  tag :symbiosis, "Human and organism grown together"
  tag :trade, "Exchange between connected and unconnected worlds"
  tag :water, "The resource both civilizations are built on"
end
