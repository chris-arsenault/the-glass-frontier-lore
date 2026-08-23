import { useQuery } from "@tanstack/react-query";
import { Link, useParams } from "react-router-dom";
import { ErrorState, LoadingState } from "../components/AsyncState";
import { CoverImage, NarrativeContent, PublicAnnotations } from "../components/PublishedContext";
import { ViewHeader } from "../components/ViewHeader";
import { useWorld } from "../components/worldContext";
import { chronicleQuery } from "../data/queries";
import { timeRange } from "../data/time";
import { useDocumentTitle } from "../hooks/useDocumentTitle";

export function ChronicleView() {
  const { world } = useWorld();
  const { chronicleSlug = "" } = useParams();
  const chronicle = useQuery(chronicleQuery(world.id, chronicleSlug));
  useDocumentTitle(chronicle.data ? `${chronicle.data.title} · ${world.title}` : world.title);

  if (chronicle.isPending) return <LoadingState />;
  if (chronicle.isError) {
    return <ErrorState title="Chronicle not found" detail={`No chronicle named ${chronicleSlug} could be read.`} />;
  }

  const document = chronicle.data;
  return <main className="narrative-layout">
    <article className="reader-page narrative-page">
      <ViewHeader
        eyebrow={`${timeRange(document.time_unit, document.from, document.to)} · ${document.format ?? "chronicle"}`}
        title={document.title}
        description={document.summary}
        actions={<Link className="quiet-link" to={`/${world.id}/chronicles`}>All chronicles</Link>}
      />
      <CoverImage media={document.media} title={document.title} />
      <NarrativeContent markdown={document.content} media={document.media} />
      <PublicAnnotations annotations={document.annotations} />
    </article>
    <aside className="context-panel narrative-context">
      {document.temporal_description && <section>
        <div className="context-panel__heading">Place in the record</div>
        <p>{document.temporal_description}</p>
      </section>}
      <section>
        <div className="context-panel__heading">People, places and things</div>
        <ul className="document-links">
          {document.entities.map((entity) => <li key={entity.id}><Link to={entity.route}>{entity.title}</Link></li>)}
        </ul>
      </section>
      {document.events.length > 0 && <section>
        <div className="context-panel__heading">Source events</div>
        <ul className="source-records">
          {document.events.map((event) => <li key={event.id}>
            <small>{event.tick} · {event.kind.replaceAll("_", " ")}</small>
            <span>{event.description ?? event.action ?? event.id}</span>
          </li>)}
        </ul>
      </section>}
    </aside>
  </main>;
}
