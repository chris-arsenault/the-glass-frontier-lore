encyclopedia :crowncut_shifts do
  name "Crowncut Shifts"
  summary "Crowncut Shifts are refinery work-families who keep contaminated clothing outside their homes and take meals together at the work boundary. The boundary meal is the institution: half wash-line, half family table, held where the work ends and the household begins."
  kind :culture
  subkind :work_tradition
  status :complete
  topics :salvage, :household, :"social-structure", :danger
  prevalence :uncommon
  appears_when all: { place: [:yard] }

  descriptive_identity(
    manner: "Shift families record closeness in boundary meals shared; 'we eat at their " \
            "line' means that two families share tables, wash rooms, and responsibility " \
            "for the clean-side and work-side boundary.",
    attire: "Work-side dress is communal property that stays at the line, washed and " \
            "reissued by the boundary house; clean-side dress is personal, and clothing " \
            "crosses only through the boundary house's wash rooms."
  )

  prose <<~PROSE
    The families that work the great salvage refineries — Crowncut's crews first, and the pattern spread with the trade — solved contamination with architecture and made the architecture a culture. The boundary house stands at the line where refinery ground ends: wash rooms, clothing stores, and the long tables where every shift eats. Work-side clothing stays work-side, communal, washed and reissued at the line; bodies cross the boundary scrubbed and re-dressed; and the meal taken at the tables between shift and home is the institution the culture is named for — the place where the work is talked out, the crews mix across families, and the day's grime is left with the day's clothes before either can walk home to the children.

    The boundary meal became the shift families' common table. Marriages start there and are announced there. Crew disputes are settled under the rule that work-side speech stays at the line. Retired workers keep their places at the head of each table, with dosimetry badges framed on the boundary-house wall behind them. The early refinery generations carried contamination home in their clothing; the badge wall names the workers lost before the wash rooms, communal stores, and boundary meal became standard. New hires learn that history with the wash order.
  PROSE

  cue "At the refinery line, a long table fills for the boundary meal — scrubbed workers in clean-side dress, the work clothes already hung back in the communal stores — and three families' children run between the benches."
  cue "The boundary-house wall carries framed dosimetry badges going back generations, hung where every meal can see them, in the place other cultures hang portraits."
  affordance "The boundary house keeps contaminated clothing out of homes and gives every refinery a common place for wash rooms, clothing stores, shift meals, announcements, and crew settlements."
  pressure "Every crossing runs through the wash rooms and clothing stores; bypassing them is entered in the boundary-house record beside the dosimetry reading and the worker's shift."
  variation "Crowncut's original tables seat by shift regardless of family; younger refineries seat by family regardless of shift, and crews visiting between them follow the host table's order."
  variation "Retired workers keep their table places for life, and the framed badge wall behind the head seats is read to new hires on their first boundary meal, name by name."
end
