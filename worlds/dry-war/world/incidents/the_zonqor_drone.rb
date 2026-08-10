incident :the_zonqor_drone do
  name "The Żonqor Drone"
  subkind :operational_failure
  tags :ecology, :military, :catastrophe
  prominence :marginal
  date 2087

  prose <<~PROSE
    A naval drone recovered off Żonqor in the spring of 2087 with pale film across its skin and crust in the seats of its gate ram. A surveyor at #{ref :kalkara_bake_shed, "Kalkara"} compared it with a set of #{ref :comparison_tiles, "graded tiles"}, judged the growth soft enough to brush away, and returned the drone to the water that day.

    The tiles were four seasons old. Their fine glazes had polished smooth and the edges of their cast crusts had rounded off. Against that worn set, hard growth looked two steps cleaner than it was.
  PROSE

  prose <<~PROSE, section: :course, heading: "The Three Gates"
    The drone worked the reef line for two more quarters. Crust from its ram seats reached a culvert behind the outer gate and spread across half the throat. Crews found the same growth locked into three gate anchors, where it had to be cut out with the gates unshipped.

    The enclave ran on two gates for a season while the other three were rebuilt. Kalkara began stamping every tile case with its casting season, breaking old sets on the stone beside the water door, and weighing machine parts before and after the ovens. The surveyor kept her number and her place on the rota; the set in her hand had matched the drone exactly.
  PROSE

  log "2026-08-09 — Replaced the grading as a procedural subject with the drone that carried anchored growth through an enclave wall and cost three gates."
end
