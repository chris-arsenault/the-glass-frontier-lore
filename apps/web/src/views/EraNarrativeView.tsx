import { useQuery } from "@tanstack/react-query";
import { Link, useParams } from "react-router-dom";
import { ErrorState, LoadingState } from "../components/AsyncState";
import { CoverImage, NarrativeContent, PublicAnnotations } from "../components/PublishedContext";
import { ViewHeader } from "../components/ViewHeader";
import { useWorld } from "../components/worldContext";
import { eraNarrativeQuery } from "../data/queries";
import { timeName } from "../data/time";
import { useDocumentTitle } from "../hooks/useDocumentTitle";

export function EraNarrativeView() {
  const { world } = useWorld();
  const { narrativeSlug = "" } = useParams();
  const narrative = useQuery(eraNarrativeQuery(world.id, narrativeSlug));
  useDocumentTitle(narrative.data ? `${narrative.data.title} · ${world.title}` : world.title);

  if (narrative.isPending) return <LoadingState />;
  if (narrative.isError) {
    return <ErrorState title="Era narrative not found" detail={`No era narrative named ${narrativeSlug} could be read.`} />;
  }

  const document = narrative.data;
  return <main className="narrative-layout">
    <article className="reader-page narrative-page">
      <ViewHeader
        eyebrow={`${document.starts}–${document.ends} ${timeName(document.time_unit)}`}
        title={document.title}
        description={document.thesis ?? document.summary}
        actions={<Link className="quiet-link" to={`/${world.id}/chronicles`}>All chronicles</Link>}
      />
      <CoverImage media={document.media} title={document.title} />
      <NarrativeContent markdown={document.content} media={document.media} />
      <PublicAnnotations annotations={document.annotations} />
    </article>
    <aside className="context-panel narrative-context">
      <section>
        <div className="context-panel__heading">Source chronicles</div>
        <ul className="document-links">
          {document.source_chronicles.map((chronicle) => (
            <li key={chronicle.id}><Link to={chronicle.route}>{chronicle.title}</Link></li>
          ))}
        </ul>
      </section>
    </aside>
  </main>;
}
