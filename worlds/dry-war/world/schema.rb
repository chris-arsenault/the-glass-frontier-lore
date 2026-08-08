# Schema — The Dry War's additions to craft/schema/base.rb, which already
# declares the entity kinds, effect verbs and the shared relation taxonomy.
#
# Add here only what this setting needs and the base does not carry: relations
# that mean something specific to it, its tag vocabulary, and any section
# heading the base lacks. Every tag used in an entry must be declared here
# first — the validator rejects undeclared tags.
schema do
  # tag :name, "what this tag means"
end
