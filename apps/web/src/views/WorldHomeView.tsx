import { useQuery } from "@tanstack/react-query";
import { Link } from "react-router-dom";
import { MarkdownContent } from "../components/MarkdownContent";
import { ViewHeader } from "../components/ViewHeader";
import { useWorld } from "../components/worldContext";
import { pageQuery } from "../data/queries";
import { useDocumentTitle } from "../hooks/useDocumentTitle";

const PROMINENCE = ["mythic", "renowned", "recognized"];

export function WorldHomeView() {
  const { world, summary } = useWorld();
  const home = useQuery({
    ...pageQuery(world.id, world.home ?? "home"),
    enabled: world.home !== null,
  });
  useDocumentTitle(`${world.title} · Tsonu Canon`);

  const featured = world.entries
    .filter((entry) => entry.prominence && PROMINENCE.includes(entry.prominence))
    .slice(0, 8);

  return (
    <main className="reader-page world-home">
      <ViewHeader
        eyebrow={`${world.entries.length} entries · present year ${world.generated_at_year}`}
        title={world.title}
        description={world.home === null ? summary.description : null}
        actions={
          <Link className="button-link" to={`/${world.id}/browse`}>
            Browse the atlas
          </Link>
        }
      />
      {home.data && (
        <div className="world-home__intro">
          {home.data.sections.map((section) => (
            <section key={section.id}>
              {section.heading && <h2>{section.heading}</h2>}
              <MarkdownContent markdown={section.markdown} />
            </section>
          ))}
        </div>
      )}
      <section className="shelf">
        <div className="section-heading">
          <h2>Names carried widely</h2>
          <Link to={`/${world.id}/graph`}>See their connections</Link>
        </div>
        <div className="entry-grid">
          {featured.map((entry) => (
            <Link className="entry-card" key={entry.id} to={entry.route}>
              <div className="entry-card__kind">{entry.kind.replaceAll("_", " ")}</div>
              <h3>{entry.title}</h3>
              <p>{entry.summary}</p>
            </Link>
          ))}
        </div>
      </section>
      <section className="kind-strip" aria-label="Kinds of entry">
        {world.kinds.map((kind) => (
          <Link key={kind.id} to={`/${world.id}/browse?kind=${kind.id}`}>
            <strong>{kind.count}</strong>
            <span>{kind.title}</span>
          </Link>
        ))}
      </section>
    </main>
  );
}
