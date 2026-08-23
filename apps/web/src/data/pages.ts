import type { PageSummary } from "../types/canon";

export function pageDisplayTitle(page: PageSummary): string {
  const separator = page.title.indexOf(":");
  return separator < 0 ? page.title : page.title.slice(separator + 1).trim();
}

export function pagesByCategory(pages: PageSummary[]): Map<string, PageSummary[]> {
  const groups = new Map<string, PageSummary[]>();
  for (const page of pages) {
    const category = page.category ?? "lore";
    groups.set(category, [...(groups.get(category) ?? []), page]);
  }
  return groups;
}
