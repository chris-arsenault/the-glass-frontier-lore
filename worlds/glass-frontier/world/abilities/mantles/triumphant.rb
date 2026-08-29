ability :triumphant do
  name "The Triumphant"
  summary "The Triumphant is a mantle of the Three that exalts an army, fleet, or city toward one publicly declared purpose."
  type_of :exaltation
  subkind :the_three
  status :complete
  tags :resonance, :religion, :"kinetic-freq", :military
  prominence :recognized
  qualification "Answers a person who accepts responsibility for a purpose in words understood by everyone expected to serve it"
  succession "Leaves a bearer who knowingly abandons their declared purpose and may pass to the person who continues it without changing the words"
  cost "When an exalted purpose ends, the bearer receives the exhaustion, heat, and bodily damage deferred by everyone who served it"

  descriptive_identity(
    signs: "The bearer's declaration carries above every other sound, and bodies, weapons, and engines serving it move in one accelerating rhythm.",
    effect: "The bearer can use #{encyclopedia_ref :exaltation, "Exaltation"} across an army, fleet, or city while its members act toward one public purpose.",
    limits: "The mantle supplies capacity rather than knowledge, cannot reconcile incompatible meanings, and releases any subject who knowingly abandons the declaration."
  )

  prose <<~PROSE
    The Triumphant does not promise victory. The mantle makes a declared purpose stronger than fear, fatigue, mechanical limit, and pain for as long as those under it continue to serve that purpose. A routed defense can stand. A crippled fleet can complete one charge. A city can lift its fallen structures and carry its wounded while the disaster is still advancing.

    Its sign is the red Triangulum drawn through a spoken declaration. Witnesses hear the words at ordinary volume and then hear them again from every participating voice, engine, and weapon. The declaration must name an act with an end. *Survive* has never held. *Keep the eastern docks open until the last evacuation kite clears* can hold thousands.
  PROSE
  prose <<~PROSE, section: :limits, heading: "The Reckoning"
    Exaltation defers failure. It does not erase it. When the purpose is fulfilled, made impossible, or abandoned, the mantle gathers the unpaid cost into its bearer. Muscle tears, impact trauma, heat injury, sleep debt, and the stress held out of machines arrive together in one body. Some bearers die at the moment everyone else begins celebrating.

    The mantle can pass through a declaration. If its bearer abandons the words and another person continues them unchanged, the shared rhythm may turn toward the second voice. Tessellan histories therefore treat public wording as both oath and succession instrument. A false declaration can win a battle and still cost its speaker the mantle before the battle ends.
  PROSE

  gm_note :triggered_by, "When a group states one concrete objective under impossible pressure, the declaration can draw the Triumphant into the scene—and make one person answer for every cost it postpones."
end

relate :rel_triumphant_resonates_triptych, :resonates_with, :triumphant, :the_tessellan_triptych
