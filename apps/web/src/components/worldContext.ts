import { createContext, useContext } from "react";
import type { WorldIndex, WorldSummary } from "../types/canon";

interface WorldContextValue {
  world: WorldIndex;
  summary: WorldSummary;
}

export const WorldContext = createContext<WorldContextValue | null>(null);

export function useWorld(): WorldContextValue {
  const value = useContext(WorldContext);
  if (!value) {
    throw new Error("useWorld must be called under WorldLayout");
  }
  return value;
}
