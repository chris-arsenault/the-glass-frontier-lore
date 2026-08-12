# Narrative Roles: Viewpoints and Titans

`narrative_role` identifies an unusual job an NPC performs in play. Most NPCs
have no narrative role. The two allowed values are `viewpoint` and `titan`.
Neither value measures power, public awareness, moral importance, or entity
kind; prominence and subkind continue to describe those dimensions.

## Viewpoint characters

A viewpoint character is an NPC whose ongoing situation gives players a
ground-level route into part of the world. Their problems began before the
players arrived. Players may investigate, assist, obstruct, or redirect the
outcome, but the NPC retains aims and agency of their own.

A viewpoint entry should establish:

- daily work in concrete places, with named tools, people, and routines;
- at least one dated earlier condition that explains the present problem;
- personal stakes distinct from the larger conflict around them;
- a current tension that cannot disappear through one simple player action;
- typed relationships to the thread, place, faction, incident, or object that
  makes their perspective specific.

Their history often reveals that the world needs another minor entity. Create a
shell when the name and relationship are already known; use a `future` marker
when only the name exists. Do not invent a fixed number of shells or edges to
satisfy the role.

Use the role when all of these are true:

1. Removing the NPC would leave a thread or theme without a local human view.
2. Their situation can sustain play beyond delivering one fact or task.
3. Their perspective reveals details that a broad faction or location entry
   cannot.
4. Expanding their history produces specific world facts rather than a longer
   biography.

Write their work and choices, not a claim that they are important. A viewpoint
may be marginal or recognized because narrative usefulness and public awareness
are independent.

## Titan characters

A titan is an NPC whose decisions created conditions that many other entities
now navigate. Readers usually encounter those effects through places, factions,
incidents, and other people before they meet the titan directly.

A titan entry should establish:

- the actions that still shape the present world;
- typed causal and organizational relationships to the affected entities;
- conflicting observations from people who live with the consequences;
- less interior explanation than a viewpoint entry.

Use the role when the NPC's effects cross several otherwise independent parts
of the world and remain visible without relying on the NPC's own account. A
powerful officeholder whose decisions have no broad, lasting consequences is not
a titan. A faction or institution may have titan-scale importance, but
`narrative_role` remains an NPC field; describe the institution through its own
kind and relationships.

Keep the entry focused on observable consequences. Other entries should carry
most of the reputation, disagreement, and local cost.

## Relationship between the roles

A viewpoint character may work inside conditions a titan created without the
titan knowing them. The viewpoint's entry can name a renowned or mythic titan;
the titan's entry should name the viewpoint only when a direct relationship
earns the reference. If that relationship begins during play, record the change
as a dated moment or temporal relation.

Both roles can connect to the same thread from different directions:

```text
thread -> viewpoint -> local people, places, and incidents
thread -> titan     -> broad factions, conflicts, and consequences
```

These are authoring paths, not generated edge types. Use the narrow relation
verbs declared by the world's schema.

## Declaration

The role does not replace an NPC's subkind:

```ruby
npc :inez_bell do
  name "Inez Bell"
  subkind :official
  narrative_role :viewpoint
  prominence :marginal
end
```

A hidden NPC uses the same field and declares `dm!(public_entry: :id)`.
Validation rejects unknown role values and any `narrative_role` on a non-NPC.
The engine does not infer the role from degree or prose; manual review applies
the criteria above.
