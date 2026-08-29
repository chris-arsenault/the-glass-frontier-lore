faction :third_latch_challenge_circle do
  name "The Third Latch Challenge Circle"
  summary "The Third Latch Challenge Circle is one Kesh group whose working names change when a member wins or yields a formal route challenge."
  type_of :community_group
  belongs_to :culture, :kesh_challenge_names
  subkind :community
  status :complete
  prominence :marginal
  veiled "The Third Latch Challenge Circle is one Kesh group whose working names change when a member wins or yields a formal route challenge."
end
relate :rel_kesh_challenge_names_at_kesh, :manifests_at, :third_latch_challenge_circle, :kesh
relate :rel_kesh_challenge_names_at_mareth, :manifests_at, :third_latch_challenge_circle, :mareth
