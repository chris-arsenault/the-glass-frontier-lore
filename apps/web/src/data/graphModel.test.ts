import { describe, expect, it } from "vitest";
import { graphElements } from "./graphModel";
import type { GraphDocument, RelationDefinition } from "../types/canon";

const graph: GraphDocument = {
  schema_version: 1,
  world_id: "test",
  revision: "abc",
  generated_at_year: 10,
  nodes: ["a", "b", "c", "d"].map((id) => ({
    id,
    title: id.toUpperCase(),
    kind: "concept",
    subkind: "reference_concept",
    prominence: undefined,
    tags: [],
    playable_as: [],
    origin_blurb: undefined,
    veiled: false,
    veil_tagline: undefined,
    dm: false,
    path: `${id}.md`,
  })),
  edges: [
    { src: "a", rel: "causes", tgt: "b", from: 0, to: null, dm: false, live_at_render: true },
    { src: "b", rel: "knows", tgt: "c", from: 5, to: null, dm: false, live_at_render: true },
    { src: "c", rel: "knows", tgt: "d", from: 20, to: null, dm: false, live_at_render: false },
  ],
};

const relations: RelationDefinition[] = [
  { id: "causes", title: "Causes", category: "causal", temporal: true, symmetric: false, inverse: undefined, description: undefined, causal: true },
  { id: "knows", title: "Knows", category: "social", temporal: true, symmetric: false, inverse: undefined, description: undefined, causal: false },
];

describe("graphElements", () => {
  it("uses the selected year when deciding which edges exist", () => {
    const elements = graphElements(graph, relations, { year: 10, relation: "", focus: "" });
    const edgeIds = elements.flatMap((element) =>
      "source" in element.data ? [String(element.data.id)] : []
    );
    expect(edgeIds).toHaveLength(2);
  });

  it("keeps two steps around a focused entry", () => {
    const elements = graphElements(graph, relations, { year: 10, relation: "", focus: "a" });
    const nodeIds = elements.flatMap((element) =>
      "source" in element.data ? [] : [String(element.data.id)]
    );
    expect(nodeIds).toEqual(["a", "b", "c"]);
  });

  it("can isolate causal relations", () => {
    const elements = graphElements(graph, relations, {
      year: 10,
      relation: "causal",
      focus: "",
    });
    const nodeIds = elements.flatMap((element) =>
      "source" in element.data ? [] : [String(element.data.id)]
    );
    expect(nodeIds).toEqual(["a", "b"]);
  });
});
