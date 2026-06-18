# Timeline — CE years are absolute ticks (matches edge valid_from/valid_to).
timeline do
  era :the_ring_age,        starts: 2000, length: 140   # ..2140
  era :the_glassfall,       length: 165                 # 2140..2305
  era :the_rekindling,      length: 35                  # 2305..2340
  era :the_contested_reach, length: 38                  # 2340..2378
  era :the_silent_bloom,    length: 29                  # 2378..2407
  era :the_bitter_reach,    length: 16                  # 2407..2423
  era :the_accord,          length: 27                  # 2423..2450
  now tick: 2435
end
