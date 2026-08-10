import type { ElementDefinition } from "cytoscape";
import type { GraphDocument, GraphEdge, RelationDefinition } from "../types/canon";

export interface GraphFilters {
  year: number;
  relation: string;
  focus: string;
}

function activeAt(edge: GraphEdge, year: number): boolean {
  return edge.from <= year && (edge.to === null || year < edge.to);
}

function relationMatches(
  edge: GraphEdge,
  selected: string,
  definitions: RelationDefinition[]
): boolean {
  if (!selected) return true;
  if (selected === "causal") {
    return definitions.some((definition) => definition.id === edge.rel && definition.causal);
  }
  return edge.rel === selected;
}

function idsNearFocus(edges: GraphEdge[], focus: string): Set<string> {
  if (!focus) return new Set();
  const kept = new Set([focus]);
  for (let depth = 0; depth < 2; depth += 1) {
    edges.forEach((edge) => {
      if (kept.has(edge.src)) kept.add(edge.tgt);
      if (kept.has(edge.tgt)) kept.add(edge.src);
    });
  }
  return kept;
}

function prominenceSize(prominence: string | undefined): number {
  if (prominence === "mythic") return 34;
  if (prominence === "renowned") return 28;
  if (prominence === "recognized") return 22;
  return 16;
}

export function graphElements(
  graph: GraphDocument,
  definitions: RelationDefinition[],
  filters: GraphFilters
): ElementDefinition[] {
  const activeEdges = graph.edges.filter(
    (edge) => activeAt(edge, filters.year) && relationMatches(edge, filters.relation, definitions)
  );
  const nearby = idsNearFocus(activeEdges, filters.focus);
  const edges = filters.focus
    ? activeEdges.filter((edge) => nearby.has(edge.src) && nearby.has(edge.tgt))
    : activeEdges;
  const connected = new Set(edges.flatMap((edge) => [edge.src, edge.tgt]));
  const nodes = graph.nodes.filter((node) => {
    if (filters.focus) return nearby.has(node.id);
    if (filters.relation) return connected.has(node.id);
    return true;
  });

  return [
    ...nodes.map((node) => ({
      data: {
        id: node.id,
        title: node.title,
        label:
          filters.focus || ["mythic", "renowned"].includes(node.prominence ?? "")
            ? node.title
            : "",
        kind: node.kind,
        size: prominenceSize(node.prominence),
      },
    })),
    ...edges.map((edge, index) => ({
      data: {
        id: `${edge.src}:${edge.rel}:${edge.tgt}:${edge.from}:${index}`,
        source: edge.src,
        target: edge.tgt,
        relation: edge.rel,
        label: filters.relation ? edge.rel.replaceAll("_", " ") : "",
      },
    })),
  ];
}
