import MiniSearch from "minisearch";
import { useEffect, useMemo, useRef, useState } from "react";
import { Link } from "react-router-dom";
import { entrySubkindLabel } from "../data/entryLabels";
import type { EntrySummary, WorldIndex } from "../types/canon";
import "./SearchDialog.css";

interface SearchButtonProps {
  world: WorldIndex;
}

function createSearch(entries: EntrySummary[]) {
  const search = new MiniSearch<EntrySummary>({
    fields: ["title", "summary", "aliases", "tags", "subkind"],
    storeFields: ["title", "kind", "subkind", "route", "summary"],
    searchOptions: {
      boost: { title: 4, aliases: 3, tags: 1.5, subkind: 1.5 },
      fuzzy: 0.2,
      prefix: true,
    },
  });
  search.addAll(entries);
  return search;
}

export function SearchButton({ world }: SearchButtonProps) {
  const dialog = useRef<HTMLDialogElement>(null);
  const input = useRef<HTMLInputElement>(null);
  const [query, setQuery] = useState("");
  const search = useMemo(() => createSearch(world.entries), [world.entries]);
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
                <span>{entrySubkindLabel({
                  kind: String(result.kind),
                  subkind: typeof result.subkind === "string" ? result.subkind : undefined,
                })}</span>
              </div>
              <p>{String(result.summary)}</p>
            </Link>
          ))}
          {!query && (
            <div className="search-dialog__hint">
              Search names, aliases, topics and the text of each summary.
            </div>
          )}
        </div>
      </dialog>
    </>
  );
}
