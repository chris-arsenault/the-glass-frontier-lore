import { apiGet, authenticatedApiGet } from "./api";
import { appConfig } from "../config";
import type {
  CanonManifest,
  ChronicleDocument,
  EditorialEntry,
  EntryDocument,
  EraNarrativeDocument,
  GraphDocument,
  PageDocument,
  TimelineDocument,
  WorldIndex,
} from "../types/canon";

export function loadManifest(): Promise<CanonManifest> {
  return apiGet<CanonManifest>("/manifest.json");
}

type WorldIndexPayload = Omit<WorldIndex, "chronicles" | "era_narratives"> &
  Partial<Pick<WorldIndex, "chronicles" | "era_narratives">>;

export function loadWorld(worldId: string): Promise<WorldIndex> {
  return apiGet<WorldIndexPayload>(`/worlds/${worldId}/index.json`).then((world) => ({
    ...world,
    chronicles: world.chronicles ?? [],
    era_narratives: world.era_narratives ?? [],
  }));
}

export function loadEntry(worldId: string, slug: string): Promise<EntryDocument> {
  return apiGet<EntryDocument>(`/worlds/${worldId}/entries/${slug}.json`);
}

export function loadPage(worldId: string, slug: string): Promise<PageDocument> {
  return apiGet<PageDocument>(`/worlds/${worldId}/pages/${slug}.json`);
}

export function loadChronicle(worldId: string, slug: string): Promise<ChronicleDocument> {
  return apiGet<ChronicleDocument>(`/worlds/${worldId}/chronicles/${slug}.json`);
}

export function loadEraNarrative(worldId: string, slug: string): Promise<EraNarrativeDocument> {
  return apiGet<EraNarrativeDocument>(`/worlds/${worldId}/era-narratives/${slug}.json`);
}

export function loadGraph(worldId: string): Promise<GraphDocument> {
  return apiGet<GraphDocument>(`/worlds/${worldId}/graph.json`);
}

export function loadTimeline(worldId: string): Promise<TimelineDocument> {
  return apiGet<TimelineDocument>(`/worlds/${worldId}/timeline.json`);
}

export function loadEditorialEntry(worldId: string, entryId: string): Promise<EditorialEntry> {
  return authenticatedApiGet<EditorialEntry>(
    `${appConfig().editorialApiUrl}/editorial/${worldId}/entries/${entryId}`
  );
}
