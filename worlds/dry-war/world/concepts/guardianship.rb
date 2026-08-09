concept :guardianship do
  name "Guardianship"
  tags :dependency, :medicine, :autonomy, :legibility
  prominence :recognized

  prose <<~PROSE
    The legal and technical relationship between a #{ref :the_managed, "Managed"} citizen and their advocate. It began as an assistant, became a fiduciary, and is now a guardianship in the full sense the older law meant: an arrangement for someone who cannot be expected to act in their own interest.

    Nobody was declared incompetent. The standard simply rose, continuously, until the average human fell below it.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "Refusal"
    A citizen may decline a recommendation, and the guardian will record the refusal, respect it, and notify every system that depends on the guardian's assessment. Nothing is forbidden. Things merely become impossible in sequence.

    The resistance term for the resulting condition is soft custody. #{ref :mercy, "Mercy"} objects to the phrase and has never proposed a better one.
  PROSE
end
