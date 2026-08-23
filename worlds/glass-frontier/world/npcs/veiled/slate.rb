npc :slate do
  name "Slate"
  subkind :dissident
  status :complete
  prominence :marginal
  veiled "Slate recuts Crowncut shift tokens so injured salvagers can claim meals while their cases are disputed."
end

relate :rel_slate_at_crowncut_refinery, :operates_in, :slate, :crowncut_refinery
relate :rel_slate_at_pell_cut, :operates_in, :slate, :pell_cut
