transport :pale_return do
  name "Pale Return"
  summary "Pale Return is an archive-ice carrier serving Lithren, Pelhari, and Vastine. It remains off the dock until every passenger has named their cargo."
  subkind :vessel
  status :complete
  prominence :marginal
  veiled "Pale Return brings Lithren archive ice to Pelhari and never docks until every passenger has named their cargo."
end

relate :rel_pale_return_at_lithren, :operates_in, :pale_return, :lithren
relate :rel_pale_return_at_pelhari, :operates_in, :pale_return, :pelhari
relate :rel_pale_return_at_vastine, :operates_in, :pale_return, :vastine
