artifact :far_bell_black_book do
  name "Far Bell Black Book"
  subkind :record
  status :complete
  prominence :marginal
  veiled "Far Bell's black book lists the beacon replies that arrived after their registered senders were lost."
end

relate :rel_far_bell_black_book_at_far_bell, :operates_in, :far_bell_black_book, :far_bell
relate :rel_far_bell_black_book_at_outside, :operates_in, :far_bell_black_book, :outside
relate :rel_far_bell_black_book_at_karet_three, :operates_in, :far_bell_black_book, :karet_three
