import type { GmNote } from "../types/canon";
import { MarkdownContent } from "./MarkdownContent";

const KIND_LABELS: Record<GmNote["kind"], string> = {
  appears: "Appears",
  complicates: "Complicates",
  triggered_by: "Triggered by",
};

/**
 * The one part of an entry addressed to whoever is running the game rather
 * than written from inside the world.
 */
export function GmNotes({ notes }: { notes: GmNote[] }) {
  if (notes.length === 0) return null;

  return <section className="entry-section gm-notes">
    <h2>GM Notes</h2>
    <dl className="gm-notes__list">
      {notes.map((note) => <div className="gm-notes__item" key={`${note.kind}:${note.text}`}>
        <dt>{KIND_LABELS[note.kind]}</dt>
        <dd><MarkdownContent markdown={note.text} /></dd>
      </div>)}
    </dl>
  </section>;
}
