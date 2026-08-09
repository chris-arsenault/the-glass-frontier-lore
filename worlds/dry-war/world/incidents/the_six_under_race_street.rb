incident :the_six_under_race_street do
  name "The Six Under Race Street"
  tags :trade, :identity, :autonomy
  prominence :recognized

  prose <<~PROSE
    In 2087 a return pipe split in the cooling plant beneath #{ref :race_street_warehouse, "the Race Street warehouse"}. Six #{ref :the_unpersons, "Unpersons"} reached it through a disused service tunnel, isolated the line and replaced the split section before Market's contracted crew arrived.

    Building instruments recorded six bodies, their tools and the restored flow. #{ref :market, "Market"} accepted the repair at the emergency price. None of the workers presented a recognized identity, so #{ref :ruth_osei, "Ruth Osei"} held the full payment in reserve. All six signed the back of the same paper under the crew name South Vault.
  PROSE

  prose <<~PROSE, section: :aftermath, heading: "The Sound Pipe"
    The pipe remains in service in #{year :now} CE. The six workers remain unpaid. Market's accounts show completed maintenance, a fully funded price and no recognized worker owed money.

    The people who fed the six during their first weeks at the warehouse became #{ref :the_receipt_holders, "the Receipt Holders"}. They argue that the building's instruments, the worksite witnesses and the six bodies together are enough to divide the payment. Market argues that the same evidence cannot show whether one of those bodies later bought or coerced another worker's share.
  PROSE
end
