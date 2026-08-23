import { useQuery } from "@tanstack/react-query";
import { Link, useSearchParams } from "react-router-dom";
import { ErrorState, LoadingState } from "../components/AsyncState";
import { MarkdownContent } from "../components/MarkdownContent";
import { ViewHeader } from "../components/ViewHeader";
import { useWorld } from "../components/worldContext";
import { timelineQuery } from "../data/queries";
import { timeName, timePoint } from "../data/time";
import { useDocumentTitle } from "../hooks/useDocumentTitle";
import "./TimelineView.css";

export function TimelineView() {
  const { world } = useWorld();
  const timeline = useQuery(timelineQuery(world.id));
  const [params, setParams] = useSearchParams();
  const selectedEra = params.get("era") ?? "";
  useDocumentTitle(`Timeline of ${world.title} · Tsonu Canon`);

  if (timeline.isPending) return <LoadingState />;
  if (timeline.isError) {
    return <ErrorState title="The timeline did not open" detail="The chronology is unavailable." />;
  }

  const events = selectedEra
    ? timeline.data.events.filter((event) => event.era === selectedEra)
    : timeline.data.events;

  return (
    <main className="reader-page timeline-view">
      <ViewHeader
        eyebrow={`Present ${timePoint(timeline.data.unit, timeline.data.now)}`}
        title="Time"
        description={`The eras set the frame. Recorded events sit at the ${timeName(timeline.data.unit, 1)} when they occurred.`}
        actions={null}
      />
      <div className="era-track">
        {timeline.data.eras.map((era) => (
          <button
            className={selectedEra === era.id ? "era-card era-card--selected" : "era-card"}
            key={era.id}
            type="button"
            onClick={() => setParams(selectedEra === era.id ? {} : { era: era.id })}
          >
            <span>{era.starts}–{era.ends}</span>
            <strong>{era.title}</strong>
            {era.description && <p>{era.description}</p>}
          </button>
        ))}
      </div>
      <section className="chronology">
        <div className="section-heading">
          <h2>{selectedEra ? timeline.data.eras.find((era) => era.id === selectedEra)?.title : "Recorded events"}</h2>
          {selectedEra && <button type="button" onClick={() => setParams({})}>Show all eras</button>}
        </div>
        {events.length === 0 ? (
          <p className="empty-state">No named events are recorded in this part of the chronology.</p>
        ) : (
          <ol>
            {events.map((event) => (
              <li key={event.id}>
                <div className="chronology__year">{event.year}</div>
                <article>
                  <h3>
                    {event.entry_id ? (
                      <Link to={`/${world.id}/entry/${event.entry_id.replaceAll("_", "-")}`}>
                        {event.title}
                      </Link>
                    ) : event.title}
                  </h3>
                  <MarkdownContent markdown={event.markdown} />
                </article>
              </li>
            ))}
          </ol>
        )}
      </section>
    </main>
  );
}
