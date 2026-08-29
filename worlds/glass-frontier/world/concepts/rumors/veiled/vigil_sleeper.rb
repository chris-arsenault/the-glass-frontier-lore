rumor :vigil_sleeper do
  name "The Vigil Sleeper"
  summary "The Vigil Sleeper is a rescue rumor about a warm human outline recorded beyond the breached wall at Vigil."
  type_of :local_rumor
  subkind :rumor
  status :complete
  prominence :marginal
  veiled "Storm surveys record a warm human outline beyond Vigil's breached wall, so crews carry a rescue blanket."
end

relate :rel_vigil_sleeper_at_vigil_breach, :manifests_at, :vigil_sleeper, :vigil_breach
