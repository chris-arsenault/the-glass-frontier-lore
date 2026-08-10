import { useQuery } from "@tanstack/react-query";
import { useSearchParams } from "react-router-dom";
import { CompareColumn } from "../components/CompareColumn";
import { ViewHeader } from "../components/ViewHeader";
import { useWorld } from "../components/worldContext";
import { entryQuery } from "../data/queries";
import { useDocumentTitle } from "../hooks/useDocumentTitle";
import "./CompareView.css";

export function CompareView() {
  const { world } = useWorld();
  const [params, setParams] = useSearchParams();
  const left = params.get("left") ?? "";
  const right = params.get("right") ?? "";
  const leftEntry = useQuery({ ...entryQuery(world.id, left || "none"), enabled: Boolean(left) });
  const rightEntry = useQuery({ ...entryQuery(world.id, right || "none"), enabled: Boolean(right) });
  useDocumentTitle(`Compare entries · ${world.title}`);

  const change = (side: "left" | "right", value: string) => {
    const next = new URLSearchParams(params);
    if (value) next.set(side, value);
    else next.delete(side);
    setParams(next);
  };

  return (
    <main className="reader-page compare-view">
      <ViewHeader
        eyebrow={null}
        title="Read side by side"
        description="Hold two entries open without flattening either one into a summary."
        actions={null}
      />
      <div className="compare-picker">
        <label>
          <span>Left entry</span>
          <select value={left} onChange={(event) => change("left", event.target.value)}>
            <option value="">Choose an entry</option>
            {world.entries.map((entry) => <option key={entry.id} value={entry.slug}>{entry.title}</option>)}
          </select>
        </label>
        <label>
          <span>Right entry</span>
          <select value={right} onChange={(event) => change("right", event.target.value)}>
            <option value="">Choose an entry</option>
            {world.entries.map((entry) => <option key={entry.id} value={entry.slug}>{entry.title}</option>)}
          </select>
        </label>
      </div>
      <div className="compare-columns">
        <CompareColumn entry={leftEntry.data ?? null} emptyText="Choose the first entry." />
        <CompareColumn entry={rightEntry.data ?? null} emptyText="Choose the second entry." />
      </div>
    </main>
  );
}
