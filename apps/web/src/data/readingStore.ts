import { create } from "zustand";
import { persist } from "zustand/middleware";

export interface ReadingTrailItem {
  worldId: string;
  entryId: string;
  slug: string;
  title: string;
  visitedAt: number;
}

interface ReadingState {
  trail: ReadingTrailItem[];
  record: (item: Omit<ReadingTrailItem, "visitedAt">) => void;
  clear: () => void;
}

const useReadingStore = create<ReadingState>()(
  persist(
    (set) => ({
      trail: [],
      record: (item) =>
        set((state) => ({
          trail: [
            { ...item, visitedAt: Date.now() },
            ...state.trail.filter(
              (existing) =>
                existing.worldId !== item.worldId || existing.entryId !== item.entryId
            ),
          ].slice(0, 30),
        })),
      clear: () => set({ trail: [] }),
    }),
    { name: "tsonu-canon-reading-trail" }
  )
);

export const useReadingTrail = () => useReadingStore((state) => state.trail);
export const useRecordReading = () => useReadingStore((state) => state.record);
export const useClearReadingTrail = () => useReadingStore((state) => state.clear);
