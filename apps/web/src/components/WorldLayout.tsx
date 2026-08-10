import { useQuery } from "@tanstack/react-query";
import { Link, NavLink, Outlet, useNavigate, useParams } from "react-router-dom";
import { manifestQuery, worldQuery } from "../data/queries";
import { ErrorState, LoadingState } from "./AsyncState";
import { CanonMark } from "./CanonMark";
import { ReadingTrail } from "./ReadingTrail";
import { SearchButton } from "./SearchDialog";
import { WorldContext } from "./worldContext";
import "./WorldLayout.css";

export function WorldLayout() {
  const { worldId = "" } = useParams();
  const navigate = useNavigate();
  const manifest = useQuery(manifestQuery);
  const world = useQuery(worldQuery(worldId));

  if (manifest.isPending || world.isPending) return <LoadingState />;
  if (manifest.isError || world.isError) {
    return <ErrorState title="The archive did not open" detail="The site data could not be read." />;
  }

  const summary = manifest.data.worlds.find((candidate) => candidate.id === worldId);
  if (!summary) {
    return <ErrorState title="Unknown world" detail={`No world named ${worldId} is in this canon.`} />;
  }

  const selectWorld = (event: React.ChangeEvent<HTMLSelectElement>) => {
    void navigate(`/${event.target.value}`);
  };

  return (
    <WorldContext.Provider value={{ world: world.data, summary }}>
      <div className={`canon-app canon-app--${worldId}`}>
        <header className="site-header">
          <Link className="site-brand" to="/" aria-label="Tsonu Canon worlds">
            <CanonMark compact />
            <span>Tsonu Canon</span>
          </Link>
          <label className="world-picker">
            <span className="sr-only">World</span>
            <select value={worldId} onChange={selectWorld}>
              {manifest.data.worlds.map((candidate) => (
                <option key={candidate.id} value={candidate.id}>
                  {candidate.title}
                </option>
              ))}
            </select>
          </label>
          <nav className="site-nav" aria-label="World views">
            <NavLink end to={`/${worldId}`}>
              Read
            </NavLink>
            <NavLink to={`/${worldId}/browse`}>Browse</NavLink>
            <NavLink to={`/${worldId}/graph`}>Web</NavLink>
            <NavLink to={`/${worldId}/timeline`}>Time</NavLink>
          </nav>
          <SearchButton world={world.data} />
        </header>
        <div className="world-frame">
          <aside className="browse-rail" aria-label="Browse this world">
            <div className="browse-rail__title">{world.data.title}</div>
            <Link className="browse-rail__all" to={`/${worldId}/browse`}>
              All entries <span>{world.data.entries.length}</span>
            </Link>
            <div className="browse-rail__group">
              <div className="browse-rail__label">By kind</div>
              {world.data.kinds.map((kind) => (
                <Link key={kind.id} to={`/${worldId}/browse?kind=${kind.id}`}>
                  <span>{kind.title}</span>
                  <span>{kind.count}</span>
                </Link>
              ))}
            </div>
            <ReadingTrail worldId={worldId} compact />
          </aside>
          <div className="world-content">
            <Outlet />
          </div>
        </div>
        <footer className="site-footer">
          <span>{world.data.title}</span>
          <span>Canon revision {world.data.revision.slice(0, 8)}</span>
        </footer>
      </div>
    </WorldContext.Provider>
  );
}
