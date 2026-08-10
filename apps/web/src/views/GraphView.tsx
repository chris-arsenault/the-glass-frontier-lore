import { useQuery } from "@tanstack/react-query";
import { useCallback, useMemo } from "react";
import { useNavigate, useSearchParams } from "react-router-dom";
import { ErrorState, LoadingState } from "../components/AsyncState";
import { GraphCanvas } from "../components/GraphCanvas";
import { ViewHeader } from "../components/ViewHeader";
import { useWorld } from "../components/worldContext";
import { graphElements } from "../data/graphModel";
import { graphQuery, timelineQuery } from "../data/queries";
import { useDocumentTitle } from "../hooks/useDocumentTitle";
import type { GraphDocument, TimelineDocument, WorldIndex } from "../types/canon";
import "./GraphView.css";

interface GraphControlsProps {
  world: WorldIndex;
  focus: string;
  relation: string;
  year: number;
  start: number;
  end: number;
  change: (key: string, value: string) => void;
}

function GraphControls({ world, focus, relation, year, start, end, change }: GraphControlsProps) {
  return <div className="graph-controls">
    <label><span>Focus</span><select value={focus} onChange={(event) => change("focus", event.target.value)}>
      <option value="">Whole world</option>{world.entries.map((entry) => <option key={entry.id} value={entry.id}>{entry.title}</option>)}
    </select></label>
    <label><span>Relation</span><select value={relation} onChange={(event) => change("relation", event.target.value)}>
      <option value="">All relations</option><option value="causal">Cause and effect</option>
      {world.relations.map((definition) => <option key={definition.id} value={definition.id}>{definition.title}</option>)}
    </select></label>
    <label className="graph-controls__year"><span>Year {year}</span>
      <input type="range" min={start} max={end} value={year} onChange={(event) => change("year", event.target.value)} />
    </label>
  </div>;
}

function GraphLegend() {
  return <div className="graph-legend">
    <span><i className="graph-legend__faction" />Faction</span>
    <span><i className="graph-legend__location" />Place</span>
    <span><i className="graph-legend__installation" />Installation</span>
    <span><i className="graph-legend__npc" />Person</span>
    <span><i className="graph-legend__artifact" />Artifact</span>
  </div>;
}

export function GraphView() {
  const { world } = useWorld();
  const graph = useQuery(graphQuery(world.id));
  const timeline = useQuery(timelineQuery(world.id));
  useDocumentTitle(`The web of ${world.title} · Tsonu Canon`);

  if ([graph.isPending, timeline.isPending].some(Boolean)) return <LoadingState />;
  if ([graph.isError, timeline.isError].some(Boolean) || !graph.data || !timeline.data) {
    return <ErrorState title="The web did not open" detail="The relationship data is unavailable." />;
  }
  return <ReadyGraphView graph={graph.data} timeline={timeline.data} world={world} />;
}

function ReadyGraphView({ graph, timeline, world }: { graph: GraphDocument; timeline: TimelineDocument; world: WorldIndex }) {
  const [params, setParams] = useSearchParams();
  const navigate = useNavigate();
  const focus = params.get("focus") ?? "";
  const relation = params.get("relation") ?? "";
  const year = Number(params.get("year") ?? graph.generated_at_year);
  const elements = useMemo(
    () => graphElements(graph, world.relations, { focus, relation, year }),
    [focus, graph, relation, world.relations, year]
  );
  const openEntry = useCallback((id: string) => {
    const entry = world.entries.find((candidate) => candidate.id === id);
    if (entry) void navigate(entry.route);
  }, [navigate, world.entries]);

  const change = (key: string, value: string) => {
    const next = new URLSearchParams(params);
    if (value) next.set(key, value);
    else next.delete(key);
    setParams(next);
  };
  const nodeCount = elements.filter((element) => !("source" in element.data)).length;
  const edgeCount = elements.length - nodeCount;
  const start = timeline.eras[0]?.starts ?? year;
  const end = timeline.now;

  return (
    <main className="reader-page graph-view">
      <ViewHeader
        eyebrow={`${nodeCount} entries · ${edgeCount} connections`}
        title="The web"
        description="Choose a year, narrow the relation, or hold one entry at the center."
        actions={null}
      />
      <GraphControls world={world} focus={focus} relation={relation} year={year} start={start} end={end} change={change} />
      <GraphCanvas elements={elements} onOpenEntry={openEntry} />
      <GraphLegend />
    </main>
  );
}
