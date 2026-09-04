creature :the_far_bell_pale_fan do
  name "The Far Bell Pale Fan"
  summary "The Far Bell Pale Fan is a named cold-route spore colony recovered from Lithren archive ice and now growing at Far Bell."
  subkind :creature
  status :complete
  prominence :marginal
  type_of :halos
  veiled "The Far Bell Pale Fan came out of Lithren archive ice and flowers beside Far Bell's warm navigation lamps."
end

relate :rel_far_bell_pale_fan_at_lithren, :inhabits, :the_far_bell_pale_fan, :lithren
relate :rel_far_bell_pale_fan_at_far_bell, :inhabits, :the_far_bell_pale_fan, :far_bell
