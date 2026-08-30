rumor :ravel_second_hull do
  name "Ravel's Second Hull"
  summary "Ravel's Second Hull is a maintenance rumor about a second pressure shell that answers knocks from inside the inhabited hull."
  subkind :rumor
  status :complete
  prominence :marginal
  veiled "Ravel maintenance crews trade maps of a second pressure hull that answers every knock from inside the first."
end

relate :rel_ravel_second_hull_at_ravel, :manifests_at, :ravel_second_hull, :ravel
