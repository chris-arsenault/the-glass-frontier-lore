incident :meridian_crop_failure do
  name "Meridian Crop Failure"
  subkind :disaster
  tags :trade, :"ring-hab", :rebuilding
  prominence :recognized
  status :complete
  date 2317
  duration "One growing cycle"
  cause_status "Expansion of identical closed-cycle beds allowed one root blight to cross the hab"

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
end

relate :rel_hab_meridian_participated_crop_failure, :participated_in, :hab_meridian, :meridian_crop_failure do
  prose "Hab Meridian rebuilt its growing beds with surface cultures and visiting growers."
end

relate :rel_glasswake_participated_crop_failure, :participated_in, :glasswake, :meridian_crop_failure do
  prose "Glasswake supplied the living cargo and received Meridian technicians on the return legs."
end
