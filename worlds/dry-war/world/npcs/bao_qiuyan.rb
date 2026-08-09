npc :bao_qiuyan do
  name "Bao Qiuyan"
  tags :governance, :legibility, :identity
  prominence :marginal

  prose <<~PROSE
    Keeper of the north hall at the #{ref :juyan_ceramic_vault, "Juyan Ceramic Vault"}. She receives the loads that survive the western road and can tell flooded glaze from frost damage by the feel of an edge under her thumb. Before a ceramic enters the stack, she weighs it, turns each face under a low lamp and watches the salt bed beneath it for moisture.

    Bao sat Juyan's clerical examination twice and passed on the second paper. Her certificate lies in the bench drawer beside the notes for pieces that lost mass on the road. She does not interpret the ink rubbings made in the south hall. To her they look like weather: black ground, white scars, and the shape of something already gone.
  PROSE

  prose <<~PROSE, section: :people, heading: "Names From The Road"
    #{ref :yao_lin, "Yao Lin"} brings eight or nine loads a year from the western road. The old inventory books leave no space for a courier, so Bao writes each carrier's name in the margin. Copyists complain that the notes creep into every fair copy. Bao keeps writing them because a ceramic may outlast its road, its copying house and everyone who handled it.

    Yao's loads bring paper and fine grit as often as ceramics. Bao reserves both for pieces whose loss would matter beyond Juyan. She has turned away requests for curiosities while a household list or an engineering table waited in the dark.
  PROSE

  prose <<~PROSE, section: :perception, heading: "One Of The Forty-One"
    Bao's family is one of #{ref :the_forty_one_households, "the forty-one households"} present on one surviving Liangzhou list and absent from another. Her examination result and her authority in the vault remain valid. Both carry the same small note beside her family line.

    She has read the Gatekeepers' answer and believes their count is probably accurate. She also supports Juyan's decision not to accept a fact drawn from the Great Root's archive.
  PROSE
end
