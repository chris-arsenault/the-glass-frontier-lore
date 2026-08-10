import type { EntrySummary } from "../types/canon";

type EntryTaxonomy = Pick<EntrySummary, "kind" | "subkind">;

export function formatIdentifier(value: string): string {
  return value.replaceAll("_", " ");
}

export function entrySubkindLabel(entry: EntryTaxonomy): string {
  return formatIdentifier(entry.subkind ?? entry.kind);
}

export function entryTaxonomyLabel(entry: EntryTaxonomy): string {
  const kind = formatIdentifier(entry.kind);
  if (!entry.subkind || entry.subkind === entry.kind) return kind;

  return `${kind} · ${formatIdentifier(entry.subkind)}`;
}
