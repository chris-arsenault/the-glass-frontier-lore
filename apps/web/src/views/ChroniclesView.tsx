import { Link } from "react-router-dom";
import { ViewHeader } from "../components/ViewHeader";
import { useWorld } from "../components/worldContext";
import { timeRange } from "../data/time";
import { useDocumentTitle } from "../hooks/useDocumentTitle";

function titleFromId(id: string): string {
  return id.split("_").map((part) => `${part[0]?.toUpperCase() ?? ""}${part.slice(1)}`).join(" ");
}

export function ChroniclesView() {
  const { world } = useWorld();
  useDocumentTitle(`Chronicles of ${world.title} · Tsonu Canon`);
  const eras = [...new Set(world.chronicles.map((chronicle) => chronicle.focal_era))];

  return <main className="reader-page chronicles-view">
    <ViewHeader
      eyebrow={`${world.chronicles.length} accepted chronicles`}
      title="Chronicles"
      description="The complete accounts preserved in the published record."
      actions={null}
    />
    {world.chronicles.length === 0 && <p className="empty-state">No chronicles have been entered for this world.</p>}
    {eras.map((era) => {
      const narrative = world.era_narratives.find((candidate) => candidate.era === era);
      return <section className="chronicle-era" key={era}>
        <div className="section-heading">
          <h2>{titleFromId(era)}</h2>
          {narrative && <Link to={narrative.route}>Read the era narrative</Link>}
        </div>
        <div className="entry-grid">
          {world.chronicles.filter((chronicle) => chronicle.focal_era === era).map((chronicle) => (
            <Link className="entry-card" key={chronicle.id} to={chronicle.route}>
              <div className="entry-card__kind">
                {timeRange(world.time_unit, chronicle.from, chronicle.to)}
              </div>
              <h3>{chronicle.title}</h3>
              <p>{chronicle.summary}</p>
            </Link>
          ))}
        </div>
      </section>;
    })}
  </main>;
}
