faction :the_continuity do
  name "The Continuity"
  summary "The Continuity is the political organization that has governed Sithari through elected majorities and municipal administration since 2160."
  subkind :government
  founded 2160
  mandate "Govern Sithari through its elected assembly and municipal administration"
  authority "Repeated electoral majorities, city law and control of the executive administration"
  tags :surface, :governance, :"social-structure", :isolation
  prominence :recognized

  prose <<~PROSE
    The political organization that has governed #{ref :sithari, "Sithari"} since 2160. It began as a coalition of shelter councils, campus administrators, utility crews, and record keepers during the #{ref :signal_famine, "Signal Famine"}. The coalition coordinated food distribution, power, courts, and the expansion beyond the surviving campus walls. It adopted the name Continuity when those emergency functions became a permanent city government.

    The name remains the party's claim to office. Its campaign records place uninterrupted water, power, courts, schools, and public archives beside every proposal for new work. Voters who support the Continuity do not have to approve every policy. Many regard the institution's long memory and experienced civil service as protection against losing systems that earlier generations kept alive by hand.
  PROSE
  prose <<~PROSE, section: :public_profile, heading: "Government in Sithari"
    Sithari elects ward representatives to a city assembly and chooses its executive from the governing majority. Opposition parties publish, contest every ward, hold assembly seats, and bring cases against the administration. The Continuity has won every citywide election since the offices took their current form.

    Its advantage accumulates through ordinary government. Continuity candidates can point to long records in utilities, law, education, and rebuilding. Its members know the departments and the departments know them. Opposition candidates win local races, especially in #{ref :keelward, "Keelward"} and the #{ref :underlayers, "Underlayers"}, but have not assembled a majority that voters trust with the whole administration.
  PROSE
  prose <<~PROSE, section: :structure, heading: "Party and Administration"
    Ward organizations select candidates and send delegates to a city convention, which agrees on a common program and chooses the executive slate. The central party office controls campaign funds and appointments within the party. It does not directly employ the engineers, teachers, court staff, or records clerks who run the city.

    The civil service is legally separate and older than many Continuity offices. Senior administrators can refuse an unlawful instruction and regularly preserve projects through a change of executive personnel. In practice, long service creates dense ties between party and administration. A department head may have worked with the same ward organization for decades without holding party office.

    Internal blocs matter more than the formal opposition on many votes. #{ref :old_campus, "Old Campus"} members defend institutions and public records. #{ref :keelward, "Keelward"} members press for port capacity and housing. Lower-city members focus on routes, utilities, and recognition of resident cooperatives. They run under one name and bargain before a proposal reaches the assembly floor.
  PROSE
  prose <<~PROSE, section: :operations, heading: "How It Governs"
    Continuity governments prefer standards that another institution can adopt. Sithari building rules, contract forms, professional records, and cargo classifications are written for repeated use. The city funds colleges and archives that train people to apply them, then offers those people and formats to other settlements.

    This practice made Sithari useful during the #{ref :the_rekindling, "Rekindling"} and extended the city's influence. A freight claim written in Sitharian form reaches court quickly; another format waits for translation. A settlement that adopts Sithari's safety records can hire from its accredited workforce. The Continuity calls this compatibility. Critics calculate the translation, retraining, and delayed rulings required to work outside it.

    Within the city, the same preference produces reliable systems and slow exceptions. An Underlayers route that residents have used safely for a year may remain unofficial because it does not fit the municipal map. A Keelward warehouse can wait through an orbital season for a new cargo class. Ward offices spend much of their time moving particular cases through rules their own party wrote.
  PROSE
  prose <<~PROSE, section: :history, heading: "City and Combatant"
    During the Contested Reach and Bitter Reach, Sithari retained its formal neutrality while Continuity governments supplied favored factions, applied economic pressure, and restricted access to city institutions. The distinction followed Sithari law: the city remained open under neutral rules while its elected government pursued a political policy.

    Other combatants experienced the city and its government together. A denied loan, delayed certification, or restricted freight contract came from a Sithari institution regardless of which legal body signed it. That history shaped the demand for an independent #{ref :tempered_accord, "Tempered Accord"} compound and still affects how outside delegations read Continuity involvement.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "A Permanent Majority"
    The Continuity's electoral record weakens the checks that formally constrain it. Experienced candidates face inexperienced challengers. Major donors prefer access to the party likely to govern. Civil servants who want an elected career usually enter through Continuity ward organizations. These advantages reinforce each other across elections and narrow the opposition's path to a citywide majority.

    The party also governs districts that do not share Old Campus priorities. #{ref :keelward, "Keelward"}'s growth strains housing and transit. #{ref :underlayers, "Underlayers"} residents resist centralized route control. #{ref :accord_shore, "Accord Shore"} places an outside authority beside the city government. Continuity ward blocs bring each dispute inside the party, where compromise can settle it without giving the formal opposition a victory.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    The current assembly retains a Continuity majority, but independent ward members hold enough seats to delay the next city capital plan. The disputed projects include #{ref :keelward, "Keelward"} freight expansion, a court addition in the #{ref :old_campus, "Old Campus"}, and a unified map for the #{ref :underlayers, "Underlayers"}. Each project has an existing department and budget; the assembly disagreement now concerns which one proceeds first.
  PROSE

  gm_note :appears, "Whatever the party wants from Sithari, a department already has a form for it and a ward officer whose working " \
                    "day is walking exceptions through rules the Continuity itself wrote. The answer is seldom no and seldom quick."
  gm_note :triggered_by, "Threaten or lean on a Sithari civil servant and they refuse the unlawful instruction and outlast whoever gave it. The lever that moves is a ward bloc, which bargains before anything reaches the assembly floor."
  gm_note :complicates, "New city money now means joining the queue behind Keelward freight, the Old Campus court addition, and the Underlayers map. Each already has a department defending its place, and the party's request arrives as a fourth claimant."
end

relate :rel_continuity_governs_sithari, :governs, :the_continuity, :sithari, since: 2160 do
  prose "The #{ref :the_continuity, "Continuity"} has held a governing majority in #{ref :sithari, "Sithari"} since the post-Glassfall administration took permanent form."
end
relate :rel_continuity_headquartered_old_campus, :headquartered_in, :the_continuity, :old_campus, since: 2160 do
  prose "The party and the city executive keep their offices in the #{ref :old_campus, "Old Campus"}."
end
relate :rel_continuity_cooperates_tempered_accord, :cooperates_with, :the_continuity, :tempered_accord, since: 2423 do
  prose "The Continuity supplies city services to the #{ref :tempered_accord, "Tempered Accord"} while recognizing its control of the inner #{ref :accord_shore, "Accord Shore"} compound."
end
