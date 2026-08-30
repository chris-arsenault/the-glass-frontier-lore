conflict :xyloathax_salvage_quarrel do
  name "The Xyloathax Salvage Quarrel"
  summary "The Xyloathax Salvage Quarrel is a conflict over Threshold crews removing objects still claimed by displaced rooms."
  subkind :conflict
  status :complete
  prominence :marginal
  veiled "Xyloathax residents seize equipment from Threshold crews who remove objects still claimed by displaced rooms."
end

relate :rel_xyloathax_salvage_quarrel_at_xyloathax, :manifests_at, :xyloathax_salvage_quarrel, :xyloathax
relate :rel_xyloathax_salvage_quarrel_at_threshold_station, :manifests_at, :xyloathax_salvage_quarrel, :threshold_station
