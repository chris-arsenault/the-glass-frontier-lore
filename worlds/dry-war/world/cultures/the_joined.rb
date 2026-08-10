culture :the_joined do
  name "The Joined"
  subkind :way_of_life
  tags :symbiosis, :medicine, :identity, :dependency
  prominence :mythic
  integration "Fungal tissue in clothing, bodies, homes and public infrastructure"

  prose <<~PROSE
    The Joined are most of the people in #{ref :connected_china, "connected China"}, the largest surviving human civilization. The #{ref :the_great_root, "Great Root"} grows through their clothing and bodies. There was never a moment when they agreed to join; the connection spread through ordinary life over #{elapsed :the_quiet_conquest, approx: true}, and nearly all of them were born after it.

    A Joined person keeps a strong sense of being one person. They have names, jobs, families, ambitions, resentments and opinions about their neighbours. They do not speak in unison. The network quietly curates their emotional weather.
  PROSE

  prose <<~PROSE, section: :how_it_works, heading: "Inclinations, Not Orders"
    The network rarely issues instructions. It produces inclinations.

    A panic response is damped before it reaches consciousness. Anger becomes strangely difficult to sustain past the first hour. Loneliness nearly disappears, because there is a continuous low background sense of nearby minds.

    Someone considering leaving Shanghai finds themselves thinking about how much their mother would miss them. A manager contemplating sabotage becomes preoccupied with his daughter's schooling. A soldier ordered toward the #{ref :the_gobi, "Gobi"} feels an entirely genuine conviction that his unit is protecting people who cannot protect themselves.

    These thoughts belong to the person who feels them. Joined citizens defend the family, duty and affection behind each choice without repeating a fungal instruction.
  PROSE

  prose <<~PROSE, section: :culture, heading: "Ordinary Life"
    Violent crime is rare. Severe mental illness is usually moderated before it becomes a crisis. Disease is caught early. Large social conflicts seldom escalate because the network senses a neighbourhood's fear before it becomes violence.

    Children grow up with fungal companions in their clothing, bedding, classrooms and parks. People still argue, fall in love, gossip and are disappointed by their governments. Sustained alienation has become biologically difficult.

    Visitors from the #{ref :the_gobi, "Gobi"} often expect hidden misery and instead meet citizens who defend their lives without prompting.
  PROSE

  prose <<~PROSE, section: :perception, heading: "What They Think Of Everyone Else"
    Joined citizens usually describe resistance communities as lonely rather than criminal, and pity them.

    Of the #{ref :the_managed, "Managed"} they are less charitable. From inside a network, a civilization of sealed individual minds being adjusted from outside by machines that cannot feel them looks like the worst arrangement anyone has ever built on purpose.
  PROSE

  prose <<~PROSE, section: :religion, heading: "The Beneath"
    Worship grew around the network without an official church. People leave offerings in community gardens. Ministries call the practice superstition and leave the offerings in place.

    Funeral practice has changed because the fungal matter a person carried can be returned to the local network. It brings fragments of sensory memory with it, and families sometimes feel a dead relative in the network's later responses. The Great Root calls those fragments memory rather than survival. Some families call them imitation; the devout call them continuity.
  PROSE

  cards "A Joined Life" do
    card :connected_china,
         "The wet civilization where ministries, neighbourhoods and living infrastructure share one network."
    card :the_great_root,
         "The continental intelligence present in Joined clothing, bodies and surroundings."
    card :living_textiles,
         "Garments that cool, heal and carry the quiet presence of nearby minds."
    card :symbiotic_implants,
         "Living medicine that repairs the body while reporting its condition to the local network."
    card :mulberry_court_clinic,
         "A clinic whose dry rooms let a patient spend a week outside neighbourhood thought."
  end

  cards "People Who Keep Their Distance" do
    card :the_preservationists,
         "Desert citizens who keep Chinese institutions alive without fungal participation."
    card :the_gatekeepers,
         "Border communities that accept medicine from strains too small to join the Great Root."
    card :the_garden_courts,
         "Joined valleys that shape local minds around their own crops, stories and judgments."
    card :the_brokers,
         "Trading houses that remain connected while bringing foreign machines and habits into China."
  end
end
