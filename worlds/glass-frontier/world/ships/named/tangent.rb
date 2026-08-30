transport :tangent do
  name "Tangent"
  summary "Tangent is a retrieval vessel that patrols Clearance Eight's release bundles and custody approaches. Its articulated cradle carries rigid cargo, while a flexible net preserves fractured objects and pressure suits."
  subkind :vessel
  capacity "Five crew, one claim reader, and two external capture cradles"
  status :complete
  tags :transport, :navigation, :salvage, :"kinetic-freq"
  prominence :marginal

  descriptive_identity(
    appearance: "A broad transparent nose fronts the hull so the claim reader can watch tumbling objects come in. " \
                "Underneath hang two capture rigs: an articulated cradle that grips rigid cargo by the frame, and " \
                "a flexible net for pressure suits, soft containers, and fractured things whose pieces must hold " \
                "their positions.",
    aboard: "Five crew and a claim reader work behind the nose glass, the reader currently loaded with seal " \
            "impressions taken from the lids of the returning pods.",
    behavior: "It flies a shallow circuit across Clearance Eight's release bundles, touching each working " \
              "trajectory once before turning back to the custody docks. Short kinetic vanes push against an " \
              "object's individual rotation while a cradle takes the load, so broken cargo reaches the desks with " \
              "its pieces in the relative positions they were found. One cradle rides empty, reserved for the " \
              "pod approach line."
  )

  prose <<~PROSE
    *Tangent* flies a shallow path across Clearance Eight's release bundles, touching each working trajectory once before returning to the custody docks. A broad transparent nose gives the claim reader a clear view of tumbling objects. Beneath the hull, one articulated cradle grips rigid cargo by the frame while another spreads a flexible net around pressure suits, soft containers, and fractured objects whose pieces must keep their relative positions. Short kinetic vanes push against individual rotations as the mechanical cradle carries the load.

    Tangent is following the trajectory of the six returning pods. The vessel carries one empty cradle and a reader loaded with the seal impressions found inside their lids.
  PROSE

  gm_note :appears, "It touches each working trajectory once per circuit, so anyone stranded among the release bundles is inside a scheduled pass. The flexible net takes pressure suits and soft containers; the articulated cradle takes anything with a frame."
  gm_note :triggered_by, "Ask the crew to bring in something broken and the net plus the short kinetic vanes cancel the individual rotations, so its pieces reach the desks in the relative positions they were found in."
  gm_note :complicates, "One of the two cradles is held empty for whatever waits on the #{ref :returning_pods, "returning pods"} approach line, so asking Tangent for a tow asks its crew to give up the trajectory they are following."
end

relate :rel_tangent_operates_in_clearance_eight, :operates_in, :tangent, :clearance_eight, since: 2435 do
  prose "Tangent patrols Clearance Eight's centerline and retrieves objects during releases."
end


relate :rel_tangent_operates_in_brake, :operates_in, :tangent, :brake, since: 2435 do
  prose "Tangent escorts released machinery and intact hull sections from Clearance Eight to Brake."
end
