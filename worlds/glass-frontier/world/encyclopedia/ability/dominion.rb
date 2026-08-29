encyclopedia :dominion do
  name "Dominion"
  summary "Dominion imposes a comprehensible command on minds, machines, or constructed servants and holds them to its exact terms."
  kind :ability
  subkind :ability
  status :complete
  topics :resonance, :governance, :military, :danger
  prevalence :rare
  available_globally

  tier :broad,
       effect: "Compel one immediate, physically possible action from a person, creature, or machine that understands the command",
       cost: "The user loses access to one recent personal memory until the command ends"
  tier :focused,
       effect: "Bind a small group or connected machine system to a short sequence of commands",
       cost: "The user permanently loses a minor autobiographical memory for each resisted order"
  tier :narrow,
       effect: "Rule a company, vessel, institution, or engineered host through standing commands",
       cost: "The user loses the memories that explain one important loyalty or relationship"
  tier :apex,
       effect: "Place an army, city, or machine intelligence under absolute command until the bearer releases it",
       cost: "Each absolute command destroys an autobiographical memory equal in importance to what the subjects were made to betray"

  descriptive_identity(
    signs: "Speech acquires a second tone, machine lights align to the speaker's pulse, and commanded subjects repeat the operative words before acting.",
    effect: "Dominion makes an understood command authoritative over a subject's competing intentions or instructions.",
    limits: "It cannot compel an action the subject cannot understand or perform, cannot supply missing knowledge, and follows literal wording rather than the user's unspoken intent."
  )

  cue "The command is heard twice: once in the speaker's voice and once from inside the listener or machine."
  cue "A resisting subject repeats the decisive words through clenched teeth or a stuttering output channel."
  affordance "Dominion can halt a charge, turn a defense grid, force a captive to release someone, or make a hostile vessel carry its boarders to safety."
  pressure "Literal commands produce literal obedience, while resistance strips the user of the memories that once gave their own choices meaning."
  variation "Living subjects experience the command as their own decision arriving with impossible certainty."
  variation "Machines preserve the imposed command as an unauthorized root instruction that survives ordinary resets."

  prose <<~PROSE
    Dominion makes a command stronger than the instructions already inside its subject. The command must be heard or received, understood, and physically possible. It can seize a person in mid-strike, turn a weapon system against its controller, or force a constructed servant to open the place it was made to guard.

    The ability provides obedience rather than competence. A subject ordered to fly a vessel cannot do so without the relevant skill. A machine ordered to identify a liar cannot answer unless it has a way to make that judgment. Complex commands are possible, but each undefined term belongs to the subject's understanding rather than the speaker's intention.
  PROSE
  prose <<~PROSE, section: :limits, heading: "The Price of Authority"
    Resistance costs the user memory. Small commands usually take recent and minor details: the last meal, a route walked that morning, the reason a tool was in hand. Continued resistance reaches deeper. Standing control can remove the face attached to a name or the event that made a loyalty matter while leaving the bare fact of the relationship behind.

    #{ref :red_sovereign, "The Red Sovereign"} is the apex of Dominion. Its bearer can command an army, a city, or a machine mind absolutely. The price follows betrayal: an order that makes subjects abandon something central to themselves destroys a memory equally central to the bearer. A sovereign can retain perfect control after forgetting every reason they once wanted it.
  PROSE
end
