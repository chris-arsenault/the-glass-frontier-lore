import type { TimeUnit } from "../types/canon";

export function timeName(unit: TimeUnit, count?: number): string {
  if (unit === "year") return count === 1 ? "year" : "years";
  return count === 1 ? "tick" : "ticks";
}

export function timePoint(unit: TimeUnit, value: number): string {
  return unit === "year" ? `year ${value}` : `tick ${value}`;
}

export function timeRange(unit: TimeUnit, from: number, to?: number | null): string {
  if (to == null) return `${timePoint(unit, from)}; end unrecorded`;
  if (from === to) return timePoint(unit, from);
  return `${from}–${to} ${timeName(unit)}`;
}
