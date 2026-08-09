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

  # Sections the base vocabulary has no reason to carry. Both gods produced
  # religions nobody established, and both remade what a person is.
  section_heading :religion
  section_heading :identity

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
