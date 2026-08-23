import { describe, expect, it } from "vitest";
import { timeRange } from "./time";

describe("timeRange", () => {
  it("does not invent an ending value for an open source range", () => {
    expect(timeRange("tick", 0, null)).toBe("tick 0; end unrecorded");
  });

  it("collapses a single recorded point", () => {
    expect(timeRange("tick", 4, 4)).toBe("tick 4");
  });
});
