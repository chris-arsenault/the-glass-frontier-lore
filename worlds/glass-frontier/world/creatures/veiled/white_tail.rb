creature :white_tail do
  name "White-Tail"
  summary "White-Tail is a scarred Kesh wallrunner tracked along the inhabited walls of Kesh and Perch."
  subkind :creature
  status :complete
  prominence :marginal
  type_of :kesh_wallrunner
  veiled "White-Tail carries matching survey marks from Kesh and Perch and crosses each settlement without touching a floor."
end

relate :rel_white_tail_at_kesh, :inhabits, :white_tail, :kesh
relate :rel_white_tail_at_perch, :inhabits, :white_tail, :perch
