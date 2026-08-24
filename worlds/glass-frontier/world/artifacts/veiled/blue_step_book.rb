artifact :blue_step_book do
  name "The Blue Step Book"
  summary "The Blue Step Book is an Avar road record kept between Blue Step Works and Ladderwell. It lists every foundation stone that rang before a recorded road failure."
  subkind :record
  status :complete
  prominence :marginal
  veiled "The Blue Step Book records every foundation stone that rang before a road failure in Avar."
end

relate :rel_blue_step_book_at_blue_step_works, :operates_in, :blue_step_book, :blue_step_works
relate :rel_blue_step_book_at_ladderwell, :operates_in, :blue_step_book, :ladderwell
