import { MarkdownContent } from "./MarkdownContent";
import type { MediaReference, PublicAnnotation } from "../types/canon";

function anchorPosition(markdown: string, anchor: string, recordedPosition?: number): number {
  if (recordedPosition != null && markdown.slice(recordedPosition, recordedPosition + anchor.length) === anchor) {
    return recordedPosition;
  }
  const phrasePosition = markdown.indexOf(anchor);
  if (phrasePosition >= 0) return phrasePosition;
  if (recordedPosition != null && recordedPosition >= 0 && recordedPosition < markdown.length) return recordedPosition;
  return -1;
}

function mediaInsertion(markdown: string, reference: MediaReference) {
  if (reference.role !== "inline" || !reference.url || !reference.anchor) return [];
  const position = anchorPosition(markdown, reference.anchor, reference.anchor_index);
  if (position < 0) return [];
  const from = position + reference.anchor.length;
    const paragraphEnd = markdown.indexOf("\n\n", from);
    const at = paragraphEnd < 0 ? markdown.length : paragraphEnd;
    const caption = reference.caption ?? "Illustration";
    return [{ at, text: `\n\n![${caption}](${reference.url})\n\n` }];
}

function anchoredMarkdown(markdown: string, media: MediaReference[]): string {
  const insertions = media.flatMap((reference) => mediaInsertion(markdown, reference))
    .sort((left, right) => right.at - left.at);

  return insertions.reduce(
    (content, insertion) => `${content.slice(0, insertion.at)}${insertion.text}${content.slice(insertion.at)}`,
    markdown,
  );
}

export function CoverImage({ media, title }: { media: MediaReference[]; title: string }) {
  const cover = media.find((reference) => reference.role === "cover" && reference.url);
  if (!cover?.url) return null;

  return <figure className="published-cover">
    <img src={cover.url} alt={cover.caption ?? `Cover for ${title}`} />
    {cover.caption && <figcaption>{cover.caption}</figcaption>}
  </figure>;
}

export function EntityImage({ media, title }: { media: MediaReference[]; title: string }) {
  const image = media.find((reference) => reference.role === "entity" && reference.url);
  if (!image?.url) return null;

  return <figure className="published-entity-image">
    <img src={image.url} alt={image.caption ?? title} />
    {image.caption && <figcaption>{image.caption}</figcaption>}
  </figure>;
}

export function NarrativeContent({ markdown, media }: { markdown: string; media: MediaReference[] }) {
  return <div className="narrative-content">
    <MarkdownContent markdown={anchoredMarkdown(markdown, media)} />
  </div>;
}

export function PublicAnnotations({ annotations }: { annotations: PublicAnnotation[] }) {
  if (annotations.length === 0) return null;

  return <section className="historian-notes">
    <h2>Historian&apos;s notes</h2>
    <ol>
      {annotations.map((annotation) => <li id={`note-${annotation.id}`} key={annotation.id}>
        <q>{annotation.anchor}</q>
        <p>{annotation.text}</p>
      </li>)}
    </ol>
  </section>;
}
