import { Link } from "react-router-dom";
import { ViewHeader } from "../components/ViewHeader";
import { useWorld } from "../components/worldContext";
import { pageDisplayTitle, pagesByCategory } from "../data/pages";
import { useDocumentTitle } from "../hooks/useDocumentTitle";

const CATEGORY_ORDER = ["world", "cultures", "lore"];

function categoryTitle(category: string): string {
  if (category === "world") return "World";
  if (category === "cultures") return "Cultures";
  return category.charAt(0).toUpperCase() + category.slice(1);
}

export function LoreView() {
  const { world } = useWorld();
  useDocumentTitle(`Lore · ${world.title}`);
  const categories = pagesByCategory(world.pages);

  return <main className="reader-page">
    <ViewHeader
      eyebrow={`${world.pages.length} published guides`}
      title="Lore"
      description="Accounts of the Berg, its peoples, its customs, and the forces that shape daily life."
      actions={null}
    />
    {CATEGORY_ORDER.filter((category) => categories.has(category)).map((category) => <section className="shelf" key={category}>
      <div className="section-heading">
        <h2>{categoryTitle(category)}</h2>
      </div>
      <div className="entry-grid">
        {categories.get(category)?.map((page) => <Link className="entry-card" key={page.id} to={page.route}>
          <h3>{pageDisplayTitle(page)}</h3>
          <p>{page.summary}</p>
        </Link>)}
      </div>
    </section>)}
  </main>;
}
