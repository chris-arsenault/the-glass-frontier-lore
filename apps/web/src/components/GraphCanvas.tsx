import cytoscape, {
  type ElementDefinition,
  type EventObjectNode,
  type StylesheetJson,
} from "cytoscape";
import { useEffect, useRef } from "react";
import "./GraphCanvas.css";

const STYLES: StylesheetJson = [
  {
    selector: "node",
    style: {
      "background-color": "#718085",
      "border-color": "#f5f2ea",
      "border-width": 1,
      color: "#253036",
      "font-family": "Georgia, serif",
      "font-size": 9,
      height: "data(size)",
      label: "data(label)",
      "text-background-color": "#f5f2ea",
      "text-background-opacity": 0.86,
      "text-background-padding": "3px",
      "text-margin-y": -14,
      width: "data(size)",
    },
  },
  { selector: 'node[kind = "faction"]', style: { "background-color": "#a85d32" } },
  { selector: 'node[kind = "geographic_location"]', style: { "background-color": "#4d8d73" } },
  { selector: 'node[kind = "installation"]', style: { "background-color": "#4d8d95" } },
  { selector: 'node[kind = "npc"]', style: { "background-color": "#775d8f" } },
  { selector: 'node[kind = "artifact"]', style: { "background-color": "#b58a32" } },
  {
    selector: "edge",
    style: {
      "curve-style": "bezier",
      "line-color": "#bdb4a5",
      opacity: 0.62,
      "target-arrow-color": "#bdb4a5",
      "target-arrow-shape": "triangle",
      width: 1,
    },
  },
  {
    selector: "edge[label]",
    style: {
      color: "#52656c",
      "font-size": 7,
      label: "data(label)",
      "text-background-color": "#f5f2ea",
      "text-background-opacity": 0.8,
      "text-background-padding": "2px",
    },
  },
  {
    selector: ":selected",
    style: { "border-color": "#111b20", "border-width": 3, opacity: 1 },
  },
];

interface GraphCanvasProps {
  elements: ElementDefinition[];
  onOpenEntry: (id: string) => void;
}

export function GraphCanvas({ elements, onOpenEntry }: GraphCanvasProps) {
  const container = useRef<HTMLDivElement>(null);

  useEffect(() => {
    if (!container.current) return undefined;
    const graph = cytoscape({
      container: container.current,
      elements,
      style: STYLES,
      layout: {
        name: "cose",
        animate: false,
        fit: true,
        padding: 36,
        nodeRepulsion: () => 120_000,
        idealEdgeLength: () => 85,
      },
      minZoom: 0.15,
      maxZoom: 2.5,
    });
    graph.on("tap", "node", (event: EventObjectNode) => onOpenEntry(event.target.id()));
    return () => graph.destroy();
  }, [elements, onOpenEntry]);

  return <div className="graph-canvas" ref={container} aria-label="Relationship graph" />;
}
