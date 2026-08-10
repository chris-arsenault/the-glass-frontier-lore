import { useMemo } from "react";
import { Link, useSearchParams } from "react-router-dom";
import { ViewHeader } from "../components/ViewHeader";
import { useWorld } from "../components/worldContext";
import { useDocumentTitle } from "../hooks/useDocumentTitle";
import type { EntrySummary, WorldIndex } from "../types/canon";

interface BrowseControlsProps {
  world: WorldIndex;
  kind: string;
  subkind: string;
  tag: string;
  query: string;
  update: (key: string, value: string, clear?: string) => void;
}

function BrowseControls({ world, kind, subkind, tag, query, update }: BrowseControlsProps) {
  const subkinds = kind ? world.subkinds.filter((item) => item.kind === kind) : world.subkinds;
  return (
    <div className="browse-controls">
      <label><span>Find</span><input type="search" value={query} onChange={(event) => update("q", event.target.value)} placeholder="Name or phrase" /></label>
      <label><span>Kind</span><select value={kind} onChange={(event) => update("kind", event.target.value, "subkind")}>
        <option value="">All kinds</option>
        {world.kinds.map((item) => <option key={item.id} value={item.id}>{item.title} ({item.count})</option>)}
      </select></label>
      <label><span>Subkind</span><select value={subkind} onChange={(event) => update("subkind", event.target.value)}>
        <option value="">All subkinds</option>
        {subkinds.map((item) => (
          <option key={`${item.kind}:${item.id}`} value={`${item.kind}:${item.id}`}>
            {item.title} ({item.count})
          </option>
        ))}
      </select></label>
      <label><span>Topic</span><select value={tag} onChange={(event) => update("tag", event.target.value)}>
        <option value="">All topics</option>
        {world.tags.map((item) => <option key={item.id} value={item.id}>{item.title}</option>)}
      </select></label>
    </div>
  );
}

function BrowseResults({ entries, update }: { entries: EntrySummary[]; update: BrowseControlsProps["update"] }) {
  return <div className="browse-results">{entries.map((entry) => (
    <article className="browse-row" key={entry.id}>
      <div className="browse-row__meta"><span>{entry.subkind.replaceAll("_", " ")}</span>{entry.prominence && <span>{entry.prominence}</span>}</div>
      <h2><Link to={entry.route}>{entry.title}</Link></h2>
      <p>{entry.summary}</p>
      {entry.tags.length > 0 && <div className="tag-list">{entry.tags.map((entryTag) => (
        <button key={entryTag} type="button" onClick={() => update("tag", entryTag)}>{entryTag.replaceAll("_", " ")}</button>
      ))}</div>}
    </article>
  ))}</div>;
}

export function BrowseView() {
  const { world } = useWorld();
  const [params, setParams] = useSearchParams();
  const kind = params.get("kind") ?? "";
  const subkind = params.get("subkind") ?? "";
  const tag = params.get("tag") ?? "";
  const query = params.get("q") ?? "";
  const [subkindKind, subkindId] = subkind.split(":", 2);
  useDocumentTitle(`Browse ${world.title} · Tsonu Canon`);

  const entries = useMemo(() => {
    const lowered = query.toLocaleLowerCase();
    return world.entries.filter((entry) => {
      if (kind && entry.kind !== kind) return false;
      if (subkind && (entry.kind !== subkindKind || entry.subkind !== subkindId)) return false;
      if (tag && !entry.tags.includes(tag)) return false;
      if (!lowered) return true;
      return `${entry.title} ${entry.aliases.join(" ")} ${entry.summary}`
        .toLocaleLowerCase()
        .includes(lowered);
    });
  }, [kind, query, subkind, subkindId, subkindKind, tag, world.entries]);

  const update = (key: string, value: string, clear?: string) => {
    const next = new URLSearchParams(params);
    if (value) next.set(key, value);
    else next.delete(key);
    if (clear) next.delete(clear);
    setParams(next);
  };

  return (
    <main className="reader-page browse-view">
      <ViewHeader
        eyebrow={`${entries.length} of ${world.entries.length} entries`}
        title="Browse the atlas"
        description="Filter by what a thing is or by what it concerns."
        actions={null}
      />
      <BrowseControls world={world} kind={kind} subkind={subkind} tag={tag} query={query} update={update} />
      <BrowseResults entries={entries} update={update} />
      {entries.length === 0 && <p className="empty-state">No entry matches these filters.</p>}
    </main>
  );
}
