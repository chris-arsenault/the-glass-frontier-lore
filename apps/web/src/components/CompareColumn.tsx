import type { EntryDocument } from "../types/canon";
import { entryTaxonomyLabel } from "../data/entryLabels";
import { ContentSections } from "./ContentSections";
import { CompactEntryFacts } from "./EntryFacts";

interface CompareColumnProps {
  entry: EntryDocument | null;
  emptyText: string;
}

export function CompareColumn({ entry, emptyText }: CompareColumnProps) {
  if (!entry) {
    return <div className="compare-column compare-column--empty">{emptyText}</div>;
  }

  const current = entry.connections.filter((connection) => connection.live);
  return (
    <article className="compare-column">
      <header>
        <div>{entryTaxonomyLabel(entry)}</div>
        <h2>{entry.title}</h2>
        {entry.aliases.length > 0 && <p>{entry.aliases.join(", ")}</p>}
      </header>
      <CompactEntryFacts facts={entry.facts} />
      <dl className="compare-facts">
        <div><dt>Prominence</dt><dd>{entry.prominence ?? "undeclared"}</dd></div>
        <div><dt>Connections now</dt><dd>{current.length}</dd></div>
        <div><dt>Topics</dt><dd>{entry.tags.length}</dd></div>
      </dl>
      <ContentSections sections={entry.sections} headingLevel={3} sectionClassName={null} />
    </article>
  );
}
