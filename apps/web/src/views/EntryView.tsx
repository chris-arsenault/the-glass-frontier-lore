import { useQuery } from "@tanstack/react-query";
import { useEffect } from "react";
import { Link, useParams } from "react-router-dom";
import { ErrorState, LoadingState } from "../components/AsyncState";
import { ContentSections } from "../components/ContentSections";
import { EditorialPanel } from "../components/EditorialPanel";
import { EntryInfobox } from "../components/EntryFacts";
import { GmNotes } from "../components/GmNotes";
import { EntityImage, PublicAnnotations } from "../components/PublishedContext";
import { ViewHeader } from "../components/ViewHeader";
import { useWorld } from "../components/worldContext";
import { entryTaxonomyLabel } from "../data/entryLabels";
import { entryQuery } from "../data/queries";
import { useRecordReading } from "../data/readingStore";
import { useDocumentTitle } from "../hooks/useDocumentTitle";
import type { EntryDocument } from "../types/canon";

function EntryArticle({ entry, worldId }: { entry: EntryDocument; worldId: string }) {
  const taxonomy = entryTaxonomyLabel(entry);
  return <article className="reader-page entry-page">
    <ViewHeader eyebrow={taxonomy} title={entry.title}
      description={null}
      actions={<Link className="quiet-link" to={`/${worldId}/compare?left=${entry.slug}`}>Compare</Link>} />
    <div className="entry-article__body">
      <EntryInfobox aliases={entry.aliases} facts={entry.facts} taxonomy={taxonomy} title={entry.title} />
      <EntityImage media={entry.media} title={entry.title} />
      <ContentSections sections={entry.sections} headingLevel={2} sectionClassName="entry-section" />
      <GmNotes notes={entry.gm_notes ?? []} />
      <PublicAnnotations annotations={entry.annotations} />
    </div>
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
  {entry.chronicles.length > 0 && <section><div className="context-panel__heading">Chronicles</div><ul className="document-links">
    {entry.chronicles.map((chronicle) => <li key={chronicle.id}><Link to={chronicle.route}>{chronicle.title}</Link></li>)}
  </ul></section>}
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

  return (
    <main className="entry-layout">
      <EntryArticle entry={entry.data} worldId={world.id} />
      <EntryContext entry={entry.data} worldId={world.id} />
    </main>
  );
}
