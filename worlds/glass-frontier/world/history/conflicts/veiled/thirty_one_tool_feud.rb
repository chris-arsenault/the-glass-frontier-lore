conflict :thirty_one_tool_feud do
  name "The Thirty-One Tool Feud"
  subkind :conflict
  status :complete
  prominence :marginal
  veiled "Thirty-One and Wash Four crews keep stealing one calibrated wrench and returning it with a new handle."
end

relate :rel_thirty_one_tool_feud_at_bay_thirty_one, :manifests_at, :thirty_one_tool_feud, :bay_thirty_one
relate :rel_thirty_one_tool_feud_at_wash_four, :manifests_at, :thirty_one_tool_feud, :wash_four
