incident :meridian_crop_failure do
  name "Meridian Crop Failure"
  summary "The Meridian Crop Failure was a 2317 blight and food shortage aboard Hab Meridian that established regular freight with Glasswake."
  subkind :disaster
  tags :trade, :"ring-hab", :rebuilding
  prominence :recognized
  status :complete
  date 2317
  duration "One growing cycle"
  cause_status "Expansion of identical closed-cycle beds allowed one root blight to cross the hab"

  descriptive_identity(
    marks:
      "Freight paperwork is where the shortage survives: records for " \
      "living cargo carry environmental limits, a named custodian, and " \
      "paired signatures from packers and receivers, fields the crop " \
      "manifests invented. The relief schedule between Hab Meridian and " \
      "Glasswake hardened into a standing run, and cultures aboard it " \
      "still travel with their growers.",
    stakes:
      "Meridian growers object to any bed expanded on a single proven " \
      "culture, and will say why: identical closed-cycle beds let one " \
      "root blight cross nearly the whole hab in 2317."
  )

  prose <<~PROSE
    The food shortage that turned the first restored signal between #{ref :hab_meridian, "Hab Meridian"} and #{ref :glasswake, "Glasswake"} into a working freight relationship. Meridian expanded its old growing beds after Reconnection traffic increased. The new beds used the same preserved root culture as the old ones. A blight that one varied field could have contained crossed nearly the whole hab.
  PROSE

  prose <<~PROSE, section: :course, heading: "Living Cargo"
    Glasswake could supply seed, live soil cultures, and enough varied root stock to restart the beds. Meridian could pay in tuned orbital components, but neither community had rules for moving a warm biological cargo from surface to orbit. Ordinary freight manifests described mass and value. They did not record temperature, air exchange, or which containers could be opened together.

    Growers travelled with the cargo. Meridian technicians came down on the return legs to fit ringglass controls in Glasswake's workshops. Each shipment carried a shared manifest signed by the people who packed it and the people prepared to receive it.
  PROSE

  prose <<~PROSE, section: :aftermath, heading: "The Repeating Run"
    Meridian lost a harvest but not the growing beds. Glasswake gained a regular market for living cargo and a dependable source of tuned components. The temporary schedule continued after the shortage ended.

    Later carriers adopted the receiving signatures, environmental limits, and named-custodian fields from the crop manifests. The forms changed. The principle that a cargo record must describe what keeps its contents alive did not.
  PROSE

  gm_note :appears, "Cargo records for anything alive still carry the fields the crop runs invented: environmental limits, a named custodian, and signatures from the people who packed the load and the people ready to receive it. The shortage reaches a freight scene as paperwork."
  gm_note :triggered_by, "Meridian growers object to any bed expanded on a single proven culture, and will say why: identical closed-cycle beds are what let one root blight cross nearly the whole hab in 2317."
  gm_note :complicates, "Living cargo on the #{ref :glasswake, "Glasswake"} run travels with its growers, so a shipment that would otherwise be a hold and a manifest becomes a passenger problem, with the people who packed the cultures aboard to hand them to whoever signs."
end

relate :rel_hab_meridian_participated_crop_failure, :participated_in, :hab_meridian, :meridian_crop_failure do
  prose "Hab Meridian rebuilt its growing beds with surface cultures and visiting growers."
  descriptive_identity(
    aims:
      "The hab needed varied root stock and live soil to restart beds " \
      "that a single preserved culture had left open to one blight.",
    conduct:
      "It paid in tuned orbital components and sent its technicians " \
      "down on the return legs to fit ringglass controls in Glasswake's " \
      "workshops.",
    cost:
      "One harvest was lost outright; the beds themselves survived."
  )
end

relate :rel_glasswake_participated_crop_failure, :participated_in, :glasswake, :meridian_crop_failure do
  prose "Glasswake supplied the living cargo and received Meridian technicians on the return legs."
  descriptive_identity(
    aims:
      "What Glasswake stood to gain was a standing market for living " \
      "cargo and a dependable source of tuned components — worth more " \
      "than any single relief payment.",
    conduct:
      "Its growers rode up with each shipment of seed, soil cultures, " \
      "and varied root stock, signing shared manifests beside the " \
      "people prepared to receive them."
  )
end
