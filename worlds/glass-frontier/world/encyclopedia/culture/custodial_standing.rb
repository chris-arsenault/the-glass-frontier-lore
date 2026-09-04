encyclopedia :custodial_standing do
  name "Custodial Standing"
  kind :culture
  subkind :collective_standing
  status :complete
  topics :archives, :governance, :"social-structure"
  prevalence :uncommon
  appears_when any: { place: [:archive, :urban] }
  summary "Custodial standing is the chartered authority to keep shared archives, plate libraries, sealed sites, reference instruments, and public registers in trust. Open access rules and audited separation from private trade make a custodian's certifications usable in disputes."
  integration "A custodial body answers to its posted charter and holding register; users fund and audit the trust but cannot direct a certification to suit their private interest"
  formal_register "Custodial acts are performed in the trust's grammar — holdings are 'kept', access is 'granted against the register', and the custodian's oath in most charters keeps the old three verbs: to hold, to show, and to hand on entire"

  descriptive_identity(
    manner: "Custodians keep procedure visible: door registers open, refusals " \
            "tied to a posted charter clause, copies sealed against a named " \
            "holding, and access granted in register order.",
    appearance: "The instruments of trust: the register at the door, the " \
                "charter posted where refusals happen, the custodian's seal " \
                "that certifies copies against holdings — and the holdings " \
                "themselves, kept visibly better than the keeper's own " \
                "possessions.",
    hospitality: "A custodial house serves every comer the charter admits, in " \
                 "charter order — the great scholar and the curious child " \
                 "wait in the same queue for the same register — and the " \
                 "equality of the queue is, deliberately, the standing's most " \
                 "public performance."
  )

  prose <<~PROSE
    Custodial bodies keep #{encyclopedia_ref :public_shelf, "the Public Shelf"}, plate libraries, chain rolls, sealed #{encyclopedia_ref :rolls, "sites"}, reference instruments, and registers used to check ledgers, weights, and identities. Their charters define access, copying, certification, and succession while barring the keeper from private trade in the holdings. The door register records each request, and the posted charter supplies the clause for every grant or refusal. A sealed copy names the holding against which it was checked.

    Charter fees and endowments fund the custodianship without giving any payer priority in the register. Most charters choose successors through apprenticeship and examination. Users audit the register and can move deposits to another house when a keeper trades on privileged access or alters a certification for private gain. The old oath states the practice in three verbs: to hold, to show, and to hand on entire. At the public desk, a scholar, factor, and child wait in the same order and receive the access their requests qualify for under the same clauses.
  PROSE

  cue "The factor arrives with money and urgency, but the child ahead of her remains first in the door register; the custodian serves both requests under the posted clauses."
  cue "The dispute lands at the reference floor, where the custodian certifies against the holding with seal, charter clause, and register line; both parties can inspect the same basis."
  affordance "A custodial seal supplies a charter-governed certification against a named holding, giving courts and traders a shared reference for disputes."
  pressure "A custodian who sells privileged access or alters a certification drives users and deposits to another house, taking the register's authority with them."
  variation "Great archives and reference floors carry the standing at civic scale; the small custodianships — a route hold's plate library, a village's seed register — keep the same charters in one room, and the oath's three verbs are identical at both sizes."
  variation "Charter politics concern who may be admitted, what may be copied, and when a sealed holding opens; users argue each change clause by clause in public."
end
