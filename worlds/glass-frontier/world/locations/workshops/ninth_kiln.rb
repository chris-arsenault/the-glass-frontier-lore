installation :ninth_kiln do
  name "Ninth Kiln"
  playable_as :chronicle_location
  subkind :workshop
  function "Fires ceramic isolation blocks, barge ribs, and flood-resistant fittings"
  status :complete
  tags :"outer-system", :trade, :transport, :resonance, :rebuilding
  prominence :marginal

  prose <<~PROSE
    Ninth Kiln is a municipal ceramic yard on the eastern boatbuilding mound of #{ref :lowbank, "Lowbank"}. It fires the dead layers that keep a channel barge's drive from coupling into Korvath's iron-rich ground, along with flood gates, pipe collars, stove tile, and ordinary household ware.

    Eight older kilns preceded it on the mound. Three survive as storage vaults, two lie below the present flood channel, and the rest were dismantled for brick. The working yard kept its number after rebuilding because every river contract already named it.
  PROSE

  prose <<~PROSE, section: :structure, heading: "A Kiln Above Water"
    The firing chamber stands on a stone core inside a broad raised platform. Clay ramps climb from the boatyard and can be cut away before a severe flood. Fuel, green ware, and finished blocks occupy separate sheds around the platform. Detachable walks join them during ordinary water.

    Long barge ribs fire vertically in narrow side chambers. Their own weight keeps them straight while the clay sets. Smaller isolation blocks fill wheeled racks in the central chamber, separated by powdered shell so no two faces fuse into a shared resonant path.

    A test pool sits below the unloading crane. Finished pieces soak there before sounding. Water reveals hairline cracks and gives every block the same thermal condition before comparison.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Dead Ceramic"
    Korvathi isolation ceramic must carry physical load while refusing a useful resonance path. Clay from Dovra contains iron grains that would answer too broadly if left in place. Workers wash, settle, and skim the mix until test tiles show no continuous dark line through their body.

    Firing proceeds unevenly by design. Dampers move heat around the chamber so neighboring blocks do not cool on one cadence. Pieces that ring together after the soak are separated and retested. A matched response across a whole batch means the firing created the pattern the ceramic was meant to break.

    Barge ribs receive a flex test between wood saddles. Building blocks take compression. A piece can pass one use and fail another; the kiln mark includes the tested load rather than a general grade.
  PROSE

  prose <<~PROSE, section: :trade, heading: "Boatyards and Off-world Orders"
    Lowbank boatyards take the long ribs. River boards buy gate and bridge pieces. Household shops collect tile and cooking ware after the industrial orders clear the platform. Off-world freight houses purchase dense isolation blocks for ports and ship holds, paying enough to keep the test pool working through quiet boatbuilding seasons.

    Large orders arrive with their own dimensions and sounding tones. Ninth Kiln rejects any tone that would make the batch useful only beside the customer's machine. The yard sells parts another shop can repair and refuses designs that turn a public kiln into an extension of a private array.

    Broken clean ceramic returns as kiln floor and packing. Material exposed to an unknown field stays outside the clay cycle and goes into marked flood fill.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "The Common Note"
    A firing intended for channel-barge repairs and Keelward warehouse blocks has produced one common low note across pieces from three different chambers. No crack joins them, and the test pool did not carry an active instrument during the soak.

    The yard has quarantined the batch on the high platform. Boatyards need the ribs before the eastern water rises further. Keelward's buyer has offered to accept the blocks untested if the kiln removes its mark, which would leave the yard with payment and no record of where the pieces went.
  PROSE
end

relate :rel_ninth_kiln_located_lowbank, :located_in, :ninth_kiln, :lowbank do
  prose "Ninth Kiln stands above the eastern boatbuilding mound at Lowbank."
end
relate :rel_lowbank_maintains_ninth_kiln, :maintains, :lowbank, :ninth_kiln do
  prose "Lowbank's municipal yard maintains the firing chambers, test pool, and detachable ramps."
end
relate :rel_ninth_kiln_depends_korvath, :depends_on, :ninth_kiln, :korvath do
  prose "The kiln's isolation ceramic answers Korvath's broad native field by breaking resonance paths through working structures."
end
relate :rel_ninth_kiln_resonates_channel_barge, :resonates_with, :ninth_kiln, :channel_barge do
  prose "Long side chambers fire the ceramic ribs that isolate channel-barge drives."
end
relate :rel_ninth_kiln_resonates_nine_holds, :resonates_with, :ninth_kiln, :nine_holds do
  prose "The freighter carries Korvathi ceramic inward and returns with ringglass and precision tools."
end
