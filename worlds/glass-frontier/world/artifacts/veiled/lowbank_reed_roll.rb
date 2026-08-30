artifact :lowbank_reed_roll do
  name "Lowbank Reed Roll"
  summary "The Lowbank Reed Roll is a ferry-debt record used around Dovra and the Reed Door. Its cuts swell shut when the account they mark is paid."
  subkind :record
  status :complete
  prominence :marginal
  veiled "The Lowbank Reed Roll preserves ferry debts as cuts that swell shut when the account is paid."
end

relate :rel_lowbank_reed_roll_at_lowbank, :operates_in, :lowbank_reed_roll, :lowbank
relate :rel_lowbank_reed_roll_at_dovra, :operates_in, :lowbank_reed_roll, :dovra
relate :rel_lowbank_reed_roll_at_the_reed_door, :operates_in, :lowbank_reed_roll, :the_reed_door
