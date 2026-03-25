# Voice & Register Review Prompt

Run this against any lore file to check for voice violations. Pass the file content and this prompt to an LLM.

---

## Prompt

You are reviewing a lore encyclopedia entry for a secondary-world fiction setting. The entry should read as if written by a chronicler who lives in this world. It should never acknowledge that it is fiction, a game, a wiki, or a designed artifact.

Review the following entry and flag every instance of these problems:

### 1. Domain leakage
References to real-world Earth concepts used as comparisons or descriptions. The world has no Earth — no Sol, no Venus, no trucks, no taxis, no sailboats, no Uber. When the prose says "like calling a cab" or "Venus-like" or "the equivalent of owning a sailboat," it has broken the fourth wall.

**Not** domain leakage: using universal physical concepts (gravity, pressure, crystalline), general English words that aren't Earth-specific (city, river, war, trade), or in-world analogies (comparing one in-world thing to another).

### 2. Wrong register
Prose that reads like design notes, author commentary, or game documentation rather than an encyclopedia entry. Examples:
- "This will likely become its own entry" (authoring process)
- "A candidate for one of the undefined culture slots" (design language)
- "There is no DM answer here" (game terminology)
- "Everything this wiki is mostly about" (self-referential)
- "Not yet defined" (acknowledging incompleteness as a design state rather than an in-world gap in knowledge)

Encyclopedia entries can acknowledge gaps in knowledge — "the cause remains unknown" is fine. What's wrong is acknowledging gaps in *authoring* — "this hasn't been written yet."

### 3. Author's notes leaked into prose
Content that was clearly a note from the author to themselves (or to a collaborator) that ended up in the published text. Things like explaining what a concept is *for* in the setting rather than what it *is* in the world. Descriptions of narrative function rather than in-world reality.

### Output format

For each violation found, output:
```
LINE: [approximate line or quote]
TYPE: domain-leakage | wrong-register | author-note
QUOTE: "[the offending text]"
FIX: [suggested replacement or "remove"]
```

If the entry is clean, say so.
