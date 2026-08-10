import { Link } from "react-router-dom";
import type { EntryFact } from "../types/canon";

interface EntryFactsProps {
  facts: EntryFact[];
  compact: boolean;
}

export function EntryFacts({ facts, compact }: EntryFactsProps) {
  if (facts.length === 0) return null;

  return (
    <dl className={`entry-facts${compact ? " entry-facts--compact" : ""}`}>
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
