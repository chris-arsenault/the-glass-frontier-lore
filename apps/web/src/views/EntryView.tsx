import { useQuery } from "@tanstack/react-query";
import { useEffect } from "react";
import { Link, useParams } from "react-router-dom";
import { ErrorState, LoadingState } from "../components/AsyncState";
import { EditorialPanel } from "../components/EditorialPanel";
import { MarkdownContent } from "../components/MarkdownContent";
import { ViewHeader } from "../components/ViewHeader";
import { useWorld } from "../components/worldContext";
import { entryQuery } from "../data/queries";
import { useRecordReading } from "../data/readingStore";
import { useDocumentTitle } from "../hooks/useDocumentTitle";
import type { EntryDocument, EntrySummary } from "../types/canon";

function EntryArticle({ entry, related, worldId }: { entry: EntryDocument; related: EntrySummary[]; worldId: string }) {
  return <article className="reader-page entry-page">
    <ViewHeader eyebrow={entry.kind.replaceAll("_", " ")} title={entry.title}
      description={entry.aliases.length > 0 ? `Also known as ${entry.aliases.join(", ")}` : null}
      actions={<Link className="quiet-link" to={`/${worldId}/compare?left=${entry.slug}`}>Compare</Link>} />
    {entry.sections.map((section) => <section className="entry-section" key={section.id}>
      {section.heading && <h2>{section.heading}</h2>}<MarkdownContent markdown={section.markdown} />
    </section>)}
    {related.length > 0 && <section className="related-entries"><h2>Near this entry</h2><div>
      {related.map((candidate) => <Link key={candidate.id} to={candidate.route}>
        <span>{candidate.title}</span><small>{candidate.kind.replaceAll("_", " ")}</small>
      </Link>)}
    </div></section>}
  </article>;
}

function EntryContext({ entry, worldId }: { entry: EntryDocument; worldId: string }) {
  const current = entry.connections.filter((connection) => connection.live);
  return <aside className="context-panel"><section><div className="context-panel__heading">Connections now</div>
    {current.length === 0 ? <p>No recorded connections at the present year.</p> : <ul className="connection-list">
      {current.map((connection) => <li key={`${connection.direction}:${connection.relation}:${connection.entry_id}`}>
        <span>{connection.direction === "incoming" ? "←" : "→"}</span><div><small>{connection.relation_title}</small><Link to={connection.route}>{connection.title}</Link></div>
      </li>)}
    </ul>}
    <Link className="context-panel__graph-link" to={`/${worldId}/graph?focus=${entry.id}`}>Open in the web</Link>
  </section>
  {entry.tags.length > 0 && <section><div className="context-panel__heading">Topics</div><div className="tag-list">
    {entry.tags.map((tag) => <Link key={tag} to={`/${worldId}/browse?tag=${tag}`}>{tag.replaceAll("_", " ")}</Link>)}
  </div></section>}
  <EditorialPanel worldId={worldId} entryId={entry.id} /></aside>;
}

export function EntryView() {
  const { world } = useWorld();
  const { entrySlug = "" } = useParams();
  const entry = useQuery(entryQuery(world.id, entrySlug));
  const record = useRecordReading();
  useDocumentTitle(entry.data ? `${entry.data.title} · ${world.title}` : world.title);

  useEffect(() => {
    if (!entry.data) return;
    record({
      worldId: world.id,
      entryId: entry.data.id,
      slug: entry.data.slug,
      title: entry.data.title,
    });
  }, [entry.data, record, world.id]);

  if (entry.isPending) return <LoadingState />;
  if (entry.isError) {
    return <ErrorState title="Entry not found" detail={`No entry named ${entrySlug} could be read.`} />;
  }

  const related = world.entries
    .filter(
      (candidate) =>
        candidate.id !== entry.data.id &&
        candidate.tags.some((tag) => entry.data.tags.includes(tag))
    )
    .slice(0, 4);

  return (
    <main className="entry-layout">
      <EntryArticle entry={entry.data} related={related} worldId={world.id} />
      <EntryContext entry={entry.data} worldId={world.id} />
    </main>
  );
}
