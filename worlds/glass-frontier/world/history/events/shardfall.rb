incident :shardfall do
  name "Shardfall"
  summary "Shardfall was a four-day salvage battle and resonance cascade beside Brake in 2348 that killed forty-seven people."
  subkind :disaster
  path "player/history/events/shardfall.md"
  status :complete
  reviewed "2026-03-19"
  tags :salvage, :military, :danger
  prominence :recognized
  date 2348
  cause_status "Drossmark continued linked extraction after Brake's arrestors began answering the rigs"
  log "2026-08-21 — Fixed Shardfall in 2348 at Brake, named all three armed parties, and based the casualty and regulatory record on the hab's surviving instruments and drive logs."

  prose <<~PROSE
    Shardfall was a four-day salvage battle beside #{ref :brake, "Brake"} in 2348. #{ref :drossmark_industries, "Drossmark Industries"}, the #{ref :brake_free_cutters, "Brake Free Cutters"}, and #{ref :split_wake, "Split Wake"} fought over an intact-grade ringglass field close to the hab's capture lanes. Linked extraction arrays carried the field's resonance into Brake and killed forty-seven people, including eleven residents inside the hab.

    Brake's observation galleries, claim channel, and arrestor instruments recorded the battle. Copies travelled with departing carriers. Shardfall became the evidence cited whenever an operator claimed that a private salvage risk ended at the edge of its own vessel.
  PROSE
  prose <<~PROSE, section: :cause, heading: "Cause"
    Two debris masses ground past each other and exposed intact-grade material inside the field. The Brake Free Cutters placed claim buoys, made assay cuts, and notified the hab before moving their transfer barges into position.

    Drossmark arrived with three heavy arrays and rejected the local claim. Its crews fixed the exposed mass, the neighboring debris, and their carrier into one cutting field. Brake's arrestor instruments began answering the extraction tone before the first full load left the rigs. The hab ordered both parties to stop work. The Cutters powered down. Drossmark continued cutting while contesting Brake's authority over open Shear.

    Split Wake approached during the standoff. Its target was the ringglass already loaded into Cutters' barges and Drossmark skiffs, not the raw field.
  PROSE
  prose <<~PROSE, section: :course, heading: "Course"
    Split Wake fired on a Drossmark transfer skiff. Drossmark escorts returned fire across the Cutters' marked work line. The Cutters moved their barges toward Brake and fired when an escort tried to hold one in the field. The three groups fought among active arrays, tethered debris, and damaged vessels while Brake kept the claim channel open.

    On the fourth day, the linked arrays settled onto the same structural response as Brake's kinetic arrestors. The extraction tone crossed the field into the hab. One capture frame snapped inward, pressure doors closed through occupied corridors, and an observation gallery lost its outer wall. Local crews cut the arrestor feeds and the Cutters severed the nearest array tether. The response stopped after it had crossed three inhabited wards.
  PROSE
  prose <<~PROSE, section: :aftermath, heading: "Aftermath"
    Brake's final ledger records forty-seven dead: eighteen Drossmark workers, nine Free Cutters, nine members of Split Wake, and eleven hab residents. Rescue crews recovered everyone whose route into the field remained on an isolated clock. The others were identified from suit records, drive logs, and the observation gallery roll.

    Brake expelled Drossmark and held the surviving Split Wake crews. The Free Cutters stabilized the field through single-vessel cuts and completed extraction in 2351. The last load paid for pressure repairs, household shares for the dead, and permanent rescue stores at the capture lanes.

    Ports began refusing Drossmark cargo within days of receiving Brake's recordings. Proposals for common Shear rules cited the open claim channel, the arrestor traces, and Drossmark's linked controls. Those records later became part of the founding case for the #{ref :shear_compact, "Shear Compact"}.
  PROSE
  prose <<~PROSE, section: :legacy, heading: "Legacy"
    "Another Shardfall" means a salvage risk has crossed into someone else's air, route, or structure. Compact inspectors use the phrase when an operator treats a linked field as separate machines. Brake uses the event's drive sequence in claim hearings because it fixes who moved, who fired, and which arrays remained active.

    Forty-seven cut marks remain along the replacement rail of Brake's observation gallery. The two unpowered Drossmark frames in the cutting yards are used as sorting tables. Split Wake's ships were dismantled there. The field itself is empty of intact-grade material and carries ordinary local traffic.
  PROSE

  gm_note :appears, "\"Another Shardfall\" is what people call a salvage risk that has crossed into someone else's air, route or structure, and Compact inspectors say it to an operator who is treating a linked field as separate machines."
  gm_note :triggered_by, "Fixing several debris masses and a carrier into one cutting field is the arrangement that answered Brake's arrestors, and a hab with kinetic arrays orders the work stopped as soon as its instruments begin echoing the extraction tone."
  gm_note :complicates, "#{ref :brake} settles claim hearings from drive sequences because this one fixed who moved, who fired and which arrays stayed active, so a party arguing a claim there is arguing against its own logs."
end

relate :rel_shardfall_caused_shear_compact, :caused, :shardfall, :shear_compact do
  prose "The deaths at Shardfall turned public opinion against unregulated salvage and produced the #{ref :shear_compact, "Shear Compact"} — regulation written in the aftermath of a disaster."
end
relate :rel_shardfall_located_in_shear, :located_in, :shardfall, :the_shear do
  prose "The battle took place in a mid-drift field beside Brake's capture lanes."
end
relate :rel_brake_participated_shardfall, :participated_in, :brake, :shardfall do
  prose "Brake ordered the extraction stopped, kept the public claim channel open, and suffered the cascade across three inhabited wards."
end
