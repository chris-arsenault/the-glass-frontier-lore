transport :tangent do
  name "Tangent"
  subkind :vessel
  capacity "Five crew, one claim reader, and two external capture cradles"
  status :complete
  tags :transport, :navigation, :salvage, :"kinetic-freq"
  prominence :marginal

  prose <<~PROSE
    *Tangent* flies a shallow path across Clearance Eight's release bundles, touching each working trajectory once before returning to the custody docks. A broad transparent nose gives the claim reader a clear view of tumbling objects. Beneath the hull, one articulated cradle grips rigid cargo by the frame while another spreads a flexible net around pressure suits, soft containers, and fractured objects whose pieces must keep their relative positions. Short kinetic vanes push against individual rotations as the mechanical cradle carries the load.

    Tangent is following the trajectory of the six returning pods. The vessel carries one empty cradle and a reader loaded with the seal impressions found inside their lids.
  PROSE
end

relate :rel_tangent_operates_in_clearance_eight, :operates_in, :tangent, :clearance_eight, since: 2435 do
  prose "Tangent patrols Clearance Eight's centerline and retrieves objects during releases."
end


relate :rel_tangent_operates_in_brake, :operates_in, :tangent, :brake, since: 2435 do
  prose "Tangent escorts released machinery and intact hull sections from Clearance Eight to Brake."
end
