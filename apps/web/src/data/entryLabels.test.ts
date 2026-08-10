import { describe, expect, it } from "vitest";
import { entrySubkindLabel, entryTaxonomyLabel, formatIdentifier } from "./entryLabels";

describe("entry labels", () => {
  it("formats schema identifiers for readers", () => {
    expect(formatIdentifier("governing_intelligence")).toBe("governing intelligence");
  });

  it("shows the kind when old data has no subkind", () => {
    const entry = { kind: "geographic_location", subkind: undefined };

    expect(entrySubkindLabel(entry)).toBe("geographic location");
    expect(entryTaxonomyLabel(entry)).toBe("geographic location");
  });

  it("shows both levels when a subkind is present", () => {
    const entry = { kind: "faction", subkind: "governing_intelligence" };

    expect(entrySubkindLabel(entry)).toBe("governing intelligence");
    expect(entryTaxonomyLabel(entry)).toBe("faction · governing intelligence");
  });
});
