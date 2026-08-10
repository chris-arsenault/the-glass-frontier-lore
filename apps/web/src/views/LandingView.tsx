import { useQuery } from "@tanstack/react-query";
import { Link } from "react-router-dom";
import { ErrorState, LoadingState } from "../components/AsyncState";
import { CanonMark } from "../components/CanonMark";
import { manifestQuery } from "../data/queries";
import { useDocumentTitle } from "../hooks/useDocumentTitle";
import "./LandingView.css";

export function LandingView() {
  const manifest = useQuery(manifestQuery);
  useDocumentTitle("Tsonu Canon");

  if (manifest.isPending) return <LoadingState />;
  if (manifest.isError) {
    return <ErrorState title="The archive did not open" detail="The world manifest is unavailable." />;
  }

  return (
    <main className="landing">
      <div className="landing__field" aria-hidden="true" />
      <header className="landing__header">
        <CanonMark compact={false} />
        <div>
          <div className="landing__kicker">An atlas of several worlds</div>
          <h1>Tsonu Canon</h1>
        </div>
      </header>
      <p className="landing__lede">
        Read from the center, follow a name sideways, or open the whole web. Each world keeps its
        own voice and shares one map.
      </p>
      <div className="world-cards">
        {manifest.data.worlds.map((world, index) => (
          <Link
            className={`world-card world-card--${world.id}`}
            key={world.id}
            to={`/${world.id}`}
          >
            <div className="world-card__number">0{index + 1}</div>
            <h2>{world.title}</h2>
            <p>{world.description}</p>
            <div className="world-card__foot">
              <span>{world.entry_count} entries</span>
              <span>Enter world</span>
            </div>
          </Link>
        ))}
      </div>
      <footer className="landing__footer">Built from the Lorecraft canon.</footer>
    </main>
  );
}
