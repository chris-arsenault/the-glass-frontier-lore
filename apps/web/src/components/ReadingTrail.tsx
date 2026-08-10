import { Link } from "react-router-dom";
import { useClearReadingTrail, useReadingTrail } from "../data/readingStore";

interface ReadingTrailProps {
  worldId: string;
  compact: boolean;
}

export function ReadingTrail({ worldId, compact }: ReadingTrailProps) {
  const trail = useReadingTrail().filter((item) => item.worldId === worldId);
  const clear = useClearReadingTrail();
  const visible = compact ? trail.slice(0, 5) : trail;

  if (visible.length === 0) return null;

  return (
    <section className={compact ? "reading-trail reading-trail--compact" : "reading-trail"}>
      <div className="reading-trail__heading">
        <span>Your trail</span>
        {!compact && (
          <button type="button" onClick={clear}>
            Clear
          </button>
        )}
      </div>
      <ol>
        {visible.map((item) => (
          <li key={`${item.worldId}:${item.entryId}`}>
            <Link to={`/${item.worldId}/entry/${item.slug}`}>{item.title}</Link>
          </li>
        ))}
      </ol>
    </section>
  );
}
