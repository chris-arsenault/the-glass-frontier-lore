import { queryOptions } from "@tanstack/react-query";
import {
  loadEditorialEntry,
  loadChronicle,
  loadEraNarrative,
  loadEntry,
  loadGraph,
  loadManifest,
  loadPage,
  loadTimeline,
  loadWorld,
} from "./canonApi";

export const manifestQuery = queryOptions({
  queryKey: ["manifest"],
  queryFn: loadManifest,
  staleTime: Number.POSITIVE_INFINITY,
});

export function worldQuery(worldId: string) {
  return queryOptions({
    queryKey: ["world", worldId],
    queryFn: () => loadWorld(worldId),
    staleTime: Number.POSITIVE_INFINITY,
  });
}

export function entryQuery(worldId: string, slug: string) {
  return queryOptions({
    queryKey: ["entry", worldId, slug],
    queryFn: () => loadEntry(worldId, slug),
    staleTime: Number.POSITIVE_INFINITY,
  });
}

export function pageQuery(worldId: string, slug: string) {
  return queryOptions({
    queryKey: ["page", worldId, slug],
    queryFn: () => loadPage(worldId, slug),
    staleTime: Number.POSITIVE_INFINITY,
  });
}

export function chronicleQuery(worldId: string, slug: string) {
  return queryOptions({
    queryKey: ["chronicle", worldId, slug],
    queryFn: () => loadChronicle(worldId, slug),
    staleTime: Number.POSITIVE_INFINITY,
  });
}

export function eraNarrativeQuery(worldId: string, slug: string) {
  return queryOptions({
    queryKey: ["era-narrative", worldId, slug],
    queryFn: () => loadEraNarrative(worldId, slug),
    staleTime: Number.POSITIVE_INFINITY,
  });
}

export function graphQuery(worldId: string) {
  return queryOptions({
    queryKey: ["graph", worldId],
    queryFn: () => loadGraph(worldId),
    staleTime: Number.POSITIVE_INFINITY,
  });
}

export function timelineQuery(worldId: string) {
  return queryOptions({
    queryKey: ["timeline", worldId],
    queryFn: () => loadTimeline(worldId),
    staleTime: Number.POSITIVE_INFINITY,
  });
}

export function editorialQuery(worldId: string, entryId: string, enabled: boolean) {
  return queryOptions({
    queryKey: ["editorial", worldId, entryId],
    queryFn: () => loadEditorialEntry(worldId, entryId),
    enabled,
    retry: false,
  });
}
