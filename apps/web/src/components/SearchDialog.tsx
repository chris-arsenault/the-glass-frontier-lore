import MiniSearch from "minisearch";
import { useEffect, useMemo, useRef, useState } from "react";
import { Link } from "react-router-dom";
import type { WorldIndex } from "../types/canon";
import "./SearchDialog.css";

interface SearchButtonProps {
  world: WorldIndex;
}

interface SearchRecord {
  id: string;
  title: string;
  summary: string;
  route: string;
  aliases: string[];
  tags: string[];
  kind: string;
}

function recordsFor(world: WorldIndex): SearchRecord[] {
  return [
    ...world.entries.map((entry) => ({
      id: `entry:${entry.id}`,
      title: entry.title,
      summary: entry.summary,
      route: entry.route,
      aliases: entry.aliases,
      tags: entry.tags,
      kind: entry.subkind ?? entry.kind,
    })),
    ...world.pages.map((page) => ({
      id: `page:${page.id}`,
      title: page.title,
      summary: page.summary,
      route: page.route,
      aliases: [],
      tags: page.category ? [page.category] : [],
      kind: page.category ?? "Lore",
    })),
    ...world.chronicles.map((chronicle) => ({
      id: `chronicle:${chronicle.id}`,
      title: chronicle.title,
      summary: chronicle.summary,
      route: chronicle.route,
      aliases: [],
      tags: [chronicle.focal_era],
      kind: "Chronicle",
    })),
    ...world.era_narratives.map((narrative) => ({
      id: `era-narrative:${narrative.id}`,
      title: narrative.title,
      summary: narrative.summary,
      route: narrative.route,
      aliases: [],
      tags: [narrative.era],
      kind: "Era narrative",
    })),
  ];
}

function createSearch(records: SearchRecord[]) {
  const search = new MiniSearch<SearchRecord>({
    fields: ["title", "summary", "aliases", "tags", "subkind"],
    storeFields: ["title", "kind", "route", "summary"],
    searchOptions: {
      boost: { title: 4, aliases: 3, tags: 1.5, kind: 1.5 },
      fuzzy: 0.2,
      prefix: true,
    },
  });
  search.addAll(records);
  return search;
}

export function SearchButton({ world }: SearchButtonProps) {
  const dialog = useRef<HTMLDialogElement>(null);
  const input = useRef<HTMLInputElement>(null);
  const [query, setQuery] = useState("");
  const search = useMemo(() => createSearch(recordsFor(world)), [world]);
  const results = query.trim() ? search.search(query).slice(0, 12) : [];

  useEffect(() => {
    const openFromKeyboard = (event: KeyboardEvent) => {
      const shortcut = (event.metaKey || event.ctrlKey) && event.key.toLowerCase() === "k";
      const slash = event.key === "/" && !(event.target instanceof HTMLInputElement);
      if (!shortcut && !slash) return;
      event.preventDefault();
      dialog.current?.showModal();
    };
    window.addEventListener("keydown", openFromKeyboard);
    return () => window.removeEventListener("keydown", openFromKeyboard);
  }, []);

  const close = () => {
    dialog.current?.close();
    setQuery("");
  };

  const open = () => {
    dialog.current?.showModal();
    requestAnimationFrame(() => input.current?.focus());
  };

  return (
    <>
      <button className="search-trigger" type="button" onClick={open}>
        <span>Search</span>
        <kbd>⌘ K</kbd>
      </button>
      <dialog className="search-dialog" ref={dialog}>
        <form method="dialog" className="search-dialog__top">
          <label>
            <span className="sr-only">Search {world.title}</span>
            <input
              ref={input}
              type="search"
              value={query}
              onChange={(event) => setQuery(event.target.value)}
              placeholder={`Search ${world.title}`}
            />
          </label>
          <button type="submit">Close</button>
        </form>
        <div className="search-dialog__results">
          {query && results.length === 0 && <p>No entry contains that name or phrase.</p>}
          {results.map((result) => (
            <Link key={String(result.id)} to={String(result.route)} onClick={close}>
              <div>
                <strong>{String(result.title)}</strong>
                <span>{String(result.kind).replaceAll("_", " ")}</span>
              </div>
              <p>{String(result.summary)}</p>
            </Link>
          ))}
          {!query && (
            <div className="search-dialog__hint">
              Search entries, chronicles, names, topics and summaries.
            </div>
          )}
        </div>
      </dialog>
    </>
  );
}
