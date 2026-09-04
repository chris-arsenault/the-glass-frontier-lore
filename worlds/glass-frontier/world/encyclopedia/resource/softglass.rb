encyclopedia :softglass do
  name "Softglass"
  kind :resource
  subkind :material
  status :complete
  topics :materials, :"ring-era", :rebuilding, :trade
  prevalence :uncommon
  appears_when all: { place: [:hot, :yard] }
  summary "Softglass is conforming repair stock recovered and re-fired around Pyre and Latch. A heated blank works like stiff dough around a damaged seal or fitting, then cools to hull hardness in the fitted shape. Yard stamps distinguish fine ring stock, structural remelt, and brittle filler grade."
  function "Field and yard repair: a heated blank conforms to a damaged seal, joint, or fitting and cools into a hard, tight, permanent-until-reheated patch"
  grades "Ring-stock softglass, recovered and re-fired, takes the finest detail and grades highest; yard-remelt runs stiffer and serves structural patches; kettle scrap, remelted past its manners, goes brittle and is sold for filler"
  availability "Worked and sold in the Pyre and Latch yards, where the recovery kilns and the skilled heat live; blanks travel anywhere, and hot-country crews carry a repair kettle the way river crews carry line"

  descriptive_identity(
    appearance: "Smoky amber glass sold in palm blanks and rod stock, glassy-hard " \
                "at rest; worked pieces are recognizable on any hull by the " \
                "smooth-flowed look of a patch that fitted itself, with the " \
                "yard's stamp pressed in while it was soft.",
    working: "The blank goes into the repair kettle until it moves like stiff " \
             "dough, is laid over the damaged seal and worked in with paddles " \
             "and gloved thumbs, and cools in place into a fitted, hull-hard " \
             "patch; reheating loosens it for adjustment or recovery.",
    risks: "A patch laid over grit or a misaligned fitting conforms to that " \
           "fault and locks it in place; sustained kettle heat softens a " \
           "finished seal again."
  )

  prose <<~PROSE
    Elven ring joints and hatches used a conforming silicate gasket stock. At kettle heat it softens to the consistency of stiff dough, takes the shape of the surface beneath it, and cools into a hard seal. Debris around #{ref :pyre, "Pyre"} and #{ref :latch, "Latch"} contains recoverable veins of the old stock. Local yards sort it, re-fire it to working temper, and cast it into palm blanks and rods. Each yard stamps the grade while the glass is soft so distant buyers can identify its source and expected working behavior.

    A repairer cleans and aligns the damaged seat, heats a blank in the kettle, and works it into the joint with paddles and gloved thumbs. The patch hardens in place and can later be reheated for adjustment or recovery. This makes softglass standard field stock where a replacement part may be a season away. Preparation determines the result: grit, a bent seat, or poor alignment becomes part of the fitted shape. Crews also keep softglass away from sustained heat capable of loosening it. Ring-stock blanks take threads and instrument detail; yard remelt serves structural patches; overworked kettle scrap is sold as filler.
  PROSE

  cue "The repair kettle comes up to temper at the breakdown site, the amber blank goes soft as stiff dough, and two gloved thumbs work it around the cracked seal seat while the crew holds lamps and opinions."
  cue "The buyer turns the blank to find the yard stamp pressed into its face, reads the grade, and pays the ring-stock price for glass that will take a thread's detail in the kettle."
  affordance "A portable kettle and stamped blanks let a field crew make hull-hard fitted seals and recover them later by reheating."
  pressure "Softglass reproduces grit and misalignment in the finished patch and softens again under sustained heat, so repair audits check both surface preparation and placement."
  variation "Ring-stock blanks take fine detail for instruments and hatches; yard remelt serves structural patches; stamped kettle scrap is restricted to filler."
  variation "Pyre and Latch use rival grading stamps, and experienced repairers distinguish the yards by working temperature and stiffness."
end
