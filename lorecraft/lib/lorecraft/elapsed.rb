# frozen_string_literal: true

module Lorecraft
  # A span between two absolute years, and the words for it.
  #
  # Prose must never state an elapsed span as a literal. A literal is a
  # restatement of two dates the timeline already knows, and restatements drift:
  # extending an era once left seventeen wrong spans across ten files, every one
  # of them arithmetic a machine should have done. Authors write
  # `#{elapsed :the_glassfall}` and this class answers.
  #
  # `exact` gives the figure. `approximate` gives the rounded phrase, and the
  # rounding vocabulary lives here so "nearly three centuries" means the same
  # thing in every entry that reaches for it.
  class Elapsed
    ONES = %w[zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen
              fifteen sixteen seventeen eighteen nineteen].freeze
    TENS = { 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty",
             6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety" }.freeze

    attr_reader :from_year, :to_year

    def initialize(from_year, to_year)
      @from_year = from_year
      @to_year = to_year
    end

    def years = (to_year - from_year).abs

    # Digits, for prose that wants the figure: "165 years".
    def exact = "#{years} #{years == 1 ? 'year' : 'years'}"

    # The rounded phrase, in words: "nearly three centuries".
    def approximate
      y = years
      _, phrase = BANDS.find { |ceiling, _| ceiling.nil? || y < ceiling }
      phrase.call(y)
    end

    def ago(style = :exact) = "#{public_send(style)} ago"

    # Ordered bands, first match wins; a nil ceiling is the catch-all. Chosen so
    # that the spans this world reaches for land on phrases a reader would write:
    # 51 → half a century, 130 → over a century, 165 → a century and a half,
    # 295 → nearly three centuries.
    BANDS = [
      [30, ->(y) { "#{Elapsed.words(y)} years" }],
      [45, ->(y) { "#{Elapsed.words(Elapsed.to_nearest(y, 5))} years" }],
      [65, ->(_y) { "half a century" }],
      [90, ->(y) { "#{Elapsed.words(Elapsed.to_nearest(y, 5))} years" }],
      [115, ->(_y) { "a century" }],
      [145, ->(_y) { "over a century" }],
      [185, ->(_y) { "a century and a half" }],
      [nil, ->(y) { Elapsed.centuries(y) }],
    ].freeze

    def self.to_nearest(value, step) = (value.to_f / step).round * step

    # Past 185 years the unit is centuries, and the qualifier says which way the
    # remainder falls — "just over two", "two and a half", "nearly three".
    def self.centuries(years)
      whole, remainder = years.divmod(100)
      case remainder
      when 0 then "#{words(whole)} centuries"
      when 1...25 then "just over #{words(whole)} centuries"
      when 25...75 then "#{words(whole)} and a half centuries"
      else "nearly #{words(whole + 1)} centuries"
      end
    end

    # Spelled-out numbers, because prose spells a span out rather than printing
    # digits mid-sentence. Past a thousand years the phrase is a century count.
    def self.words(number)
      return number.to_s unless number.between?(0, 999)
      return ONES[number] if number < 20

      if number < 100
        tens, ones = number.divmod(10)
        return [TENS[tens], ones.zero? ? nil : ONES[ones]].compact.join("-")
      end

      hundreds, rest = number.divmod(100)
      head = hundreds == 1 ? "a hundred" : "#{ONES[hundreds]} hundred"
      rest.zero? ? head : "#{head} and #{words(rest)}"
    end
  end
end
