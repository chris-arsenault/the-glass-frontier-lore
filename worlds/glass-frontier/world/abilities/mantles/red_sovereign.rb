ability :red_sovereign do
  name "The Red Sovereign"
  summary "The Red Sovereign is an Adversary mantle that places an army, city, or machine intelligence under absolute spoken command."
  type_of :dominion
  subkind :the_adversary
  status :complete
  tags :resonance, :religion, :governance, :military
  prominence :recognized
  qualification "Answers someone who secures obedience from a person with every reason and opportunity to refuse"
  succession "Passes to a subject who knowingly disobeys an absolute command and reaches the bearer before punishment can fall"
  cost "Every absolute command destroys an autobiographical memory equal in importance to what the commanded subjects are made to betray"

  descriptive_identity(
    signs: "The bearer's voice acquires a second red-toned register, and commanded people or machines repeat the decisive words before obeying.",
    effect: "The bearer can use #{encyclopedia_ref :dominion, "Dominion"} absolutely across armies, cities, and machine intelligences.",
    limits: "Commands must be understood and physically possible, grant no missing skill, and follow the subject's literal understanding rather than the bearer's private intent."
  )

  prose <<~PROSE
    The Red Sovereign can command a city to open, a fleet to turn its weapons, an army to kneel, or a machine intelligence to betray the purpose around which it was built. The order enters every subject in words they understand. Obedience feels self-authored until the act reaches the thing in them most unwilling to comply.

    The mantle's red is not the honest red of the Triangulum. Tessellan commentators call it Will wearing another person's shape: a command that appears to close inside the subject while its origin remains outside. Every known copy of the shadow list names the Red Sovereign, though several replace the title with a blank red crown.
  PROSE
  prose <<~PROSE, section: :limits, heading: "A Life Spent on Orders"
    The mantle pays for obedience with the bearer's own history. A command to surrender a weapon may take the memory of acquiring one. An order that makes soldiers abandon their families may erase the face of the bearer's closest kin. The knowledge that a relationship existed remains after the event that gave it meaning is gone.

    Absolute disobedience opens succession. A subject must understand the command, resist it, and reach the bearer while the mantle is still trying to enforce the words. If they do, the red second voice moves into them. The former sovereign remembers having ruled and may no longer remember why anyone feared them.
  PROSE

  gm_note :complicates, "An absolute command can end the immediate battle, but its cost erases a foundational memory and the first person to defy it becomes the possible next sovereign."
end

relate :rel_red_sovereign_resonates_false_form, :resonates_with, :red_sovereign, :the_false_form
