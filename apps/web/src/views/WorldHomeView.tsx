import { useQuery } from "@tanstack/react-query";
import { Link } from "react-router-dom";
import { ContentSections } from "../components/ContentSections";
import { ViewHeader } from "../components/ViewHeader";
import { useWorld } from "../components/worldContext";
import { entrySubkindLabel } from "../data/entryLabels";
import { pageQuery } from "../data/queries";
import { pageDisplayTitle } from "../data/pages";
import { timePoint } from "../data/time";
import { useDocumentTitle } from "../hooks/useDocumentTitle";

const PROMINENCE = ["mythic", "renowned", "recognized"];

function LoreShelf({ worldId, pages }: { worldId: string; pages: ReturnType<typeof useWorld>["world"]["pages"] }) {
  if (pages.length === 0) return null;

  return <section className="shelf">
    <div className="section-heading">
      <h2>Lore</h2>
      <Link to={`/${worldId}/lore`}>Read the world guides</Link>
    </div>
    <div className="entry-grid">
      {pages.slice(0, 4).map((page) => <Link className="entry-card" key={page.id} to={page.route}>
        <div className="entry-card__kind">{page.category ?? "Lore"}</div>
        <h3>{pageDisplayTitle(page)}</h3>
        <p>{page.summary}</p>
      </Link>)}
    </div>
  </section>;
}

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
        eyebrow={`${world.entries.length} entries · present ${timePoint(world.time_unit, world.generated_at_year)}`}
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
          <ContentSections sections={home.data.sections} headingLevel={2} sectionClassName={null} />
        </div>
      )}
      <LoreShelf worldId={world.id} pages={world.pages} />
      {world.chronicles.length > 0 && <section className="shelf">
        <div className="section-heading">
          <h2>Chronicles</h2>
          <Link to={`/${world.id}/chronicles`}>Read the complete record</Link>
        </div>
        <div className="entry-grid">
          {world.chronicles.slice(0, 4).map((chronicle) => <Link className="entry-card" key={chronicle.id} to={chronicle.route}>
            <div className="entry-card__kind">Chronicle · {chronicle.from}–{chronicle.to}</div>
            <h3>{chronicle.title}</h3>
            <p>{chronicle.summary}</p>
          </Link>)}
        </div>
      </section>}
      <section className="shelf">
        <div className="section-heading">
          <h2>Names carried widely</h2>
          <Link to={`/${world.id}/graph`}>See their connections</Link>
        </div>
        <div className="entry-grid">
          {featured.map((entry) => (
            <Link className="entry-card" key={entry.id} to={entry.route}>
              <div className="entry-card__kind">{entrySubkindLabel(entry)}</div>
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
