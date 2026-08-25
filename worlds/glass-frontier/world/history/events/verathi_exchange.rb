incident :verathi_exchange do
  name "Verathi Exchange"
  summary "The Verathi Exchange was a 2311 dispute over Sithari's attempt to treat the independently governed hab as a restored district."
  subkind :dispute
  tags :diplomacy, :divergence, :"ring-hab", :rebuilding
  prominence :recognized
  status :complete
  date 2311

  descriptive_identity(
    marks:
      "Standing missions in Verathi and Sithari, each recognizing the " \
      "other's registries and courts, date from the signed instruments. " \
      "First contacts across the system open with the questions the " \
      "exchange settled: who can bind the community, whose law applies " \
      "aboard a visiting vessel, and whether every privilege runs both " \
      "ways.",
    stakes:
      "A document that assumes inherited authority over a hab — a " \
      "restoration order, a district appointment — is handed back for " \
      "rewriting rather than refused, and a community can join the " \
      "wider system without conceding that the old ring administration " \
      "ever governed it."
  )

  prose <<~PROSE
    The first Reconnection dispute between two communities that both wanted contact. #{ref :verathi, "Verathi"} answered surface signals, exchanged records freely, and accepted a visiting delegation. The disagreement began when Sithari's restoration commission presented credentials that treated the hab as a returning district of the old ring administration.
  PROSE

  prose <<~PROSE, section: :course, heading: "Two Sets of Credentials"
    Verathi's receivers recognized the commission and cleared its vessel to dock. Its civic chambers then received the visitors as representatives of a foreign government. The commission carried authority to restore services and appoint a district liaison. Verathi had maintained its own registry, courts, and life-support councils throughout the Signal Famine and offered to exchange ambassadors.

    Both parties kept talking. Cargo moved through the dock while the documents were rewritten. The commission removed every clause that assumed inherited jurisdiction. Verathi replaced its offer of hospitality with a reciprocal mission whose staff would hold the same protections in Sithari that Sitharian staff held aboard the hab.
  PROSE

  prose <<~PROSE, section: :aftermath, heading: "The Exchange"
    The signed instruments established missions in both communities and recognized each one's records within the other. Later contacts copied the useful parts: identify the body that can bind the community, state whose law applies aboard a visiting vessel, and make every privilege reciprocal.

    Verathi joined the wider system without rejoining the government that had preceded the Glassfall. The distinction shaped every successful contact that followed.
  PROSE

  gm_note :appears, "First contact between two communities now opens with the questions this exchange settled: who can bind the community, whose law applies aboard a visiting vessel, and whether every privilege on offer runs both ways."
  gm_note :triggered_by, "A document that assumes authority over a hab, a restoration order or a district appointment, is handed back for rewriting rather than refused. #{ref :verathi, "Verathi"} cleared the commission's vessel and received its officers as foreigners while the dock kept working."
end

relate :rel_verathi_participated_exchange, :participated_in, :verathi, :verathi_exchange do
  prose "Verathi received the commission and required reciprocal recognition before accepting a permanent mission."
  descriptive_identity(
    aims:
      "The hab wanted the wider system — signals answered, records " \
      "exchanged, cargo moving — on the standing of a community that " \
      "had kept its own registry, courts, and life-support councils " \
      "running through the Famine.",
    conduct:
      "Its receivers cleared the commission's vessel to dock while its " \
      "civic chambers received the officers as a foreign delegation, " \
      "and the dock kept working through every rewriting of the " \
      "documents."
  )
end

relate :rel_continuity_participated_verathi_exchange, :participated_in, :the_continuity, :verathi_exchange do
  prose "The Continuity sent Sithari's restoration commission and accepted the rewritten credentials."
  descriptive_identity(
    aims:
      "The commission arrived carrying authority to restore services " \
      "and seat a district liaison — the model of a returning district " \
      "of the old ring administration.",
    conduct:
      "When the model failed it stayed at the table: every clause " \
      "assuming inherited jurisdiction came out, and its mission staff " \
      "took the same protections aboard the hab that Verathi's would " \
      "hold in Sithari."
  )
end

relate :rel_verathi_exchange_caused_cooperation, :caused, :verathi_exchange, :verathi do
  prose "The exchange established Verathi's standing as an independent participant in the Reconnection."
end
