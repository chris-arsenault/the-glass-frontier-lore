culture :doorstep_claimants do
  name "Doorstep Claimants"
  subkind :culture
  status :complete
  prominence :marginal
  veiled "Doorstep Claimants carry floor tiles from displaced homes and lay them beneath every temporary bed."
end

relate :rel_doorstep_claimants_at_xyloathax, :manifests_at, :doorstep_claimants, :xyloathax
relate :rel_doorstep_claimants_at_outside, :manifests_at, :doorstep_claimants, :outside
