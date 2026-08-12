import { Link } from "react-router-dom";
import type { EntryFact } from "../types/canon";

interface FactListProps {
  facts: EntryFact[];
}

function FactList({ facts }: FactListProps) {
  return (
    <dl className="entry-facts">
      {facts.map((fact) => (
        <div key={fact.id}>
          <dt>{fact.label}</dt>
          <dd>
            {fact.links ? fact.links.map((link, index) => (
              <span key={link.entry_id}>
                {index > 0 && ", "}<Link to={link.route}>{link.title}</Link>
              </span>
            )) : fact.value}
          </dd>
        </div>
      ))}
    </dl>
  );
}

interface EntryInfoboxProps {
  aliases: string[];
  facts: EntryFact[];
  taxonomy: string;
  title: string;
}

export function EntryInfobox({ aliases, facts, taxonomy, title }: EntryInfoboxProps) {
  if (facts.length === 0 && aliases.length === 0) return null;

  return (
    <aside className="entry-infobox" aria-label={`${title} facts`}>
      <header className="entry-infobox__header">
        <span>{taxonomy}</span>
        <strong>{title}</strong>
      </header>
      {aliases.length > 0 && <dl className="entry-facts entry-infobox__aliases">
        <div><dt>Also known as</dt><dd>{aliases.join(", ")}</dd></div>
      </dl>}
      <FactList facts={facts} />
    </aside>
  );
}

export function CompactEntryFacts({ facts }: FactListProps) {
  if (facts.length === 0) return null;

  return <div className="entry-facts--compact"><FactList facts={facts} /></div>;
}
