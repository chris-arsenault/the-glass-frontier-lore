encyclopedia :vault_mule do
  name "Vault Mule"
  kind :technology
  subkind :transport
  status :complete
  topics :"ring-era", :archives, :transport
  prevalence :uncommon
  appears_when all: { place: [:archive] }
  summary "A vault mule is an elven archive carrier: a chest-high walking case-bearer that still serves the deep vaults, accepting sealed cases, carrying them at document pace, and surrendering them only to the hand that matches the manifest."
  function "Carries sealed archive cases between vault stations under its own custody discipline"
  classes "Single-case couriers, the broad four-case freight pattern, and the rare cold-vault pattern that warms its cargo bed"
  capacity "One to four sealed cases by pattern; a mule refuses weight above its plate rating by settling down on its legs and waiting"
  operating_limit "Walks at document pace on vault floors it knows; a mule led off its own halls stops at the threshold and plants"

  descriptive_identity(
    appearance: "A chest-high case-bearer on six short legs, ceramic-shelled, with a cargo bed of " \
                "worn guide rails and a manifest plate that lights under a presented seal. Old " \
                "ones carry generations of vault chalk marks on their shells like drover brands.",
    working: "Present a sealed case and a seal-ring at the bed; the mule takes the case, walks " \
             "its route at an even document pace, and releases the load when the receiving " \
             "seal matches the manifest plate. It queues at doors with visible patience.",
    behavior: "Mules know their halls the way herd animals know a mountain: they keep to " \
              "learned routes, wait out obstructions, and settle down on their legs — case and " \
              "all — when asked to do something outside custody.",
    risks: "The custody discipline runs both ways: a case loaded under one seal comes off under " \
           "that seal or stays on the mule, and archives keep a drawer of orphan cases riding " \
           "their mules for want of a matching ring."
  )

  prose <<~PROSE
    In the deep vaults of Verathi, Thornvault, and the Folded Annex, the archive still walks. A vault mule is a chest-high, six-legged case-bearer of elven make, ceramic-shelled and patient, built to move sealed records between vault stations under a custody discipline stricter than most living couriers keep. Present a case and a seal-ring at the bed; the mule accepts the load, lights the manifest plate, and walks its route at the unhurried pace archives call document speed. At the far station it surrenders the case to the seal that matches its plate, and to that seal only.

    The machines have served the same halls since the ring's civil service loaded them, and they know their routes the way herd animals know a mountain path — waiting out obstructions, queuing at doors, pressing on through dark and cold that stop human clerks. Archivists chalk working marks on their shells as drovers brand stock, and the shells of the old mules carry generations of marks under the current ones. Each vault's mules answer that vault's halls; a mule led to a strange threshold stops and plants, and the archives long ago arranged their transfer stations around the fact rather than against it.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Custody and the Orphan Drawer"
    The discipline that makes mules trustworthy makes them occasionally immovable. A case rides under the seal that loaded it, and a lost, broken, or disputed seal leaves an orphan: a case the mule keeps carrying, round after round — the one refusal in its repertoire, and the archives' phrase for an insoluble problem. Verathi's registry keeps a public list of its orphan cases with the mule each one rides; petitions to force a case require a registrar's court, a witnessed seal reconstruction, and, by long tradition, an apology addressed to the mule.

    Feeding is the minders' word for the maintenance the machines accept: cargo-bed rails dressed with wax, shells washed, legs cleared of vault grit. The mechanisms inside stay sealed, elven, and working, and the archives extend to their mules the standing rule of all running elven equipment — the machine's routine outranks the schedule of anyone visiting it.
  PROSE

  cue "A chest-high ceramic carrier walks the vault corridor at an even, unhurried pace, sealed case in its rail bed, and queues behind two clerks at the door with visible patience."
  cue "On the registry wall hangs the orphan list — case numbers paired with mule names — and the oldest entries are written in a dead clerk's hand."
  affordance "A mule moves sealed records through dark, cold, and quarantine sections under a custody discipline courts accept as testimony — the manifest plate's record outweighs a clerk's word in every registry in the system."
  pressure "Custody runs both ways: a broken or disputed seal turns cargo into an orphan the mule carries forever, and forcing one open takes a registrar's court and a witnessed reconstruction while the record rides in circles."
  variation "Verathi runs four-case freight mules on the register floors and posts their routes like ferry times; Thornvault's single-case couriers work the canyon vaults where a dropped case would fall a long way."
  variation "The cold-vault pattern warms its cargo bed for media that crack at depth temperatures, and the two known survivors are lent between archives under treaties with named escorts."
end
