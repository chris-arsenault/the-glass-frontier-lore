import { useQuery } from "@tanstack/react-query";
import { Link, useParams } from "react-router-dom";
import { ErrorState, LoadingState } from "../components/AsyncState";
import { ContentSections } from "../components/ContentSections";
import { ViewHeader } from "../components/ViewHeader";
import { useWorld } from "../components/worldContext";
import { pageQuery } from "../data/queries";
import { pageDisplayTitle } from "../data/pages";
import { useDocumentTitle } from "../hooks/useDocumentTitle";

export function PageView() {
  const { world } = useWorld();
  const { pageSlug = "" } = useParams();
  const page = useQuery(pageQuery(world.id, pageSlug));
  useDocumentTitle(page.data ? `${page.data.title} · ${world.title}` : world.title);

  if (page.isPending) return <LoadingState />;
  if (page.isError) return <ErrorState title="Page not found" detail="This page is not in the canon." />;

  return (
    <main className="reader-page standalone-page">
      <ViewHeader
        eyebrow={page.data.category ?? "Lore"}
        title={pageDisplayTitle(page.data)}
        description={page.data.summary}
        actions={null}
      />
      <ContentSections sections={page.data.sections} headingLevel={2} sectionClassName={null} />
      {page.data.linked_entities.length > 0 && <section className="shelf">
        <h2>Named in this account</h2>
        <div className="related-links">
          {page.data.linked_entities.map((entry) => <Link key={entry.id} to={entry.route}>{entry.title}</Link>)}
        </div>
      </section>}
    </main>
  );
}
