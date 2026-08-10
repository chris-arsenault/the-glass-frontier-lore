import { Link } from "react-router-dom";
import type { AuthoredSection } from "../types/canon";
import { MarkdownContent } from "./MarkdownContent";

interface ContentSectionsProps {
  sections: AuthoredSection[];
  headingLevel: 2 | 3;
  sectionClassName: string | null;
}

export function ContentSections({
  sections,
  headingLevel,
  sectionClassName,
}: ContentSectionsProps) {
  const Heading = headingLevel === 2 ? "h2" : "h3";

  return sections.map((section) => (
    <section
      className={`${sectionClassName ?? ""}${section.format === "cards" ? " authored-card-section" : ""}`.trim() || undefined}
      key={section.id}
    >
      {section.heading && <Heading>{section.heading}</Heading>}
      {section.format === "cards" ? (
        <div className="authored-card-grid">
          {section.cards.map((card) => (
            <article className="authored-card" key={card.entry_id}>
              <Link className="authored-card__title" to={card.route}>{card.title}</Link>
              <MarkdownContent markdown={card.description} />
            </article>
          ))}
        </div>
      ) : (
        <MarkdownContent markdown={section.markdown} />
      )}
    </section>
  ));
}
