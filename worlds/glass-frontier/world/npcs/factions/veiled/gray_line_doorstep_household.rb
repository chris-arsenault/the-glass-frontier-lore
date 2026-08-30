faction :gray_line_doorstep_household do
  name "The Gray Line Doorstep Household"
  summary "The Gray Line Doorstep Household is one displaced family that carries floor tiles from a lost home and places them beneath each temporary bed."
  type_of :doorstep_claimants
  subkind :community
  status :complete
  prominence :marginal
  veiled "The Gray Line Doorstep Household is one displaced family that carries floor tiles from a lost home and places them beneath each temporary bed."
end
relate :rel_doorstep_claimants_at_xyloathax, :manifests_at, :gray_line_doorstep_household, :xyloathax
relate :rel_doorstep_claimants_at_outside, :manifests_at, :gray_line_doorstep_household, :outside
