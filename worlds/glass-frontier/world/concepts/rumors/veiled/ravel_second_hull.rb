rumor :ravel_second_hull do
  name "Ravel's Second Hull"
  subkind :rumor
  status :complete
  prominence :marginal
  veiled "Ravel maintenance crews trade maps of a second pressure hull that answers every knock from inside the first."
end

relate :rel_ravel_second_hull_at_ravel, :manifests_at, :ravel_second_hull, :ravel
