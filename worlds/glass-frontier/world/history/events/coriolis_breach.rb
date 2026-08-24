incident :coriolis_breach do
  name "Coriolis Breach"
  summary "The Coriolis Breach was a forced entry into a sealed habitat during the Contested Reach that killed all but one member of the contact team."
  subkind :dispute
  path "player/history/events/coriolis-breach.md"
  status :complete
  reviewed "2026-03-19"
  tags :governance, :"ring-hab", :military
  prominence :recognized

  prose <<~PROSE
    A forced-entry incident during the Contested Reach. A faction broke into a #{ref :shuttered_habs, "shuttered hab"} expecting a rescue mission and encountered a community that had been sealed for generations. The contact team was slaughtered. One survivor returned.
  PROSE
  prose <<~PROSE, section: :cause, heading: "Cause"
    Hab Coriolis was a garden hab — an enclosed environment where the original life-support systems had drifted, the interior had rewilded into dense pre-technological biome, and the inhabitants had adapted by abandoning technology entirely over the course of the Signal Famine. By the Rekindling, the community inside was tribal, self-sufficient, and had no framework for understanding the world outside their walls.

    A faction — motivated by genuine humanitarian concern — decided to force the hab open. Their reasoning was compassionate: people were living in pre-industrial conditions inside a functioning ring hab. They had no medicine, no communication, no knowledge of the wider system. The faction believed they were mounting a rescue.
  PROSE
  prose <<~PROSE, section: :course, heading: "Course"
    The contact team breached the hab's outer airlock and entered expecting to find a community in need. What they found was a functioning tribal society that had developed over generations of isolation — with its own governance, its own spiritual framework, and its own understanding of what the sealed walls meant. In that framework, the walls were the boundary of the world, and anything that came through them was not human.

    The team was killed. Not in a battle — in what the inhabitants understood as a defense against demonic intrusion. The contact team's technology, their appearance, their inability to speak the community's language — all of it confirmed the inhabitants' cosmology. The outsiders were exactly what the stories said they would be.

    One team member survived. The details of their escape are not widely publicized, but the survivor's account became the first outside description of a fully reverted hab community.
  PROSE
  prose <<~PROSE, section: :aftermath, heading: "Aftermath"
    The Coriolis breach ended the forced-contact era. The incident proved that sealed habs could not be treated as rescue targets — what was inside might not want rescuing. The surviving team member's testimony was devastating — not because the community was savage, but because it was *coherent*. The inhabitants of Hab Coriolis had a functioning society. They weren't suffering. They weren't waiting to be rescued. They had built something that worked for them, and the contact team had violated it.

    The political impact was immediate and lasting. Forced entry went from "controversial but sometimes necessary" to "unconscionable." When the #{ref :tempered_accord, "Tempered Accord"} was drafted years later, the sovereignty provisions — habs can legally refuse contact, and no faction may force entry — existed because of what happened at Coriolis.
  PROSE
  prose <<~PROSE, section: :legacy, heading: "Legacy"
    Hab Coriolis remains shuttered. The breach was sealed from outside after the surviving team member escaped. Nobody has attempted contact since. Whether the inhabitants are aware that the outside world exists, or whether the breach has been incorporated into their cosmology as a confirmed demonic incursion, is unknown.

    The survivor, #{ref :venn_talis, "Venn Talis"}, gave testimony, withdrew from the faction that mounted the expedition, and refused later public office. Accord mediators still study the testimony before working with a community that limits contact.
  PROSE

  gm_note :triggered_by, "Proposing to open a sealed hab, for salvage or for a crew believed trapped inside, brings the #{ref :tempered_accord, "Tempered Accord"}'s sovereignty provisions into the scene, and they exist because of Coriolis. The question stops being how to breach the hatch and becomes who claims authority at it."
  gm_note :complicates, "The faction that forced Coriolis open was sincere, and the NPCs arguing for the next entry bring instrument readings rather than threats. Refusing them means accepting that people behind the wall may die of something a visiting crew could have treated."
end

relate :rel_coriolis_breach_caused_tempered_accord, :caused, :coriolis_breach, :tempered_accord do
  prose "Coriolis ended the forced-contact era: forced entry went from controversial-but-sometimes-necessary to unconscionable. When the #{ref :tempered_accord, "Tempered Accord"} was drafted years later, its sovereignty provisions — habs may legally refuse contact, and no faction may force entry — existed because of what happened here."
end
relate :rel_venn_talis_participated_in_coriolis_breach, :participated_in, :venn_talis, :coriolis_breach do
  prose "#{ref :venn_talis, "Venn Talis"} was the sole survivor of the contact team — and whose testimony, devastating because the reverted community was coherent rather than savage, is now studied in diplomatic training."
end
