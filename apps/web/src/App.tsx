import { lazy, Suspense } from "react";
import { Navigate, Route, Routes } from "react-router-dom";
import { LoadingState } from "./components/AsyncState";
import { WorldLayout } from "./components/WorldLayout";
import { BrowseView } from "./views/BrowseView";
import { ChronicleView } from "./views/ChronicleView";
import { ChroniclesView } from "./views/ChroniclesView";
import { EntryView } from "./views/EntryView";
import { EraNarrativeView } from "./views/EraNarrativeView";
import { LandingView } from "./views/LandingView";
import { LoreView } from "./views/LoreView";
import { PageView } from "./views/PageView";
import { WorldHomeView } from "./views/WorldHomeView";
import { AuthCallbackView } from "./views/AuthCallbackView";

const CompareView = lazy(() => import("./views/CompareView").then((module) => ({ default: module.CompareView })));
const GraphView = lazy(() => import("./views/GraphView").then((module) => ({ default: module.GraphView })));
const TimelineView = lazy(() => import("./views/TimelineView").then((module) => ({ default: module.TimelineView })));

function Deferred({ children }: { children: React.ReactNode }) {
  return <Suspense fallback={<LoadingState />}>{children}</Suspense>;
}

export function App() {
  return (
    <Routes>
      <Route path="/" element={<LandingView />} />
      <Route path="/auth/callback" element={<AuthCallbackView />} />
      <Route path=":worldId" element={<WorldLayout />}>
        <Route index element={<WorldHomeView />} />
        <Route path="browse" element={<BrowseView />} />
        <Route path="lore" element={<LoreView />} />
        <Route path="entry/:entrySlug" element={<EntryView />} />
        <Route path="chronicles" element={<ChroniclesView />} />
        <Route path="chronicle/:chronicleSlug" element={<ChronicleView />} />
        <Route path="era-narrative/:narrativeSlug" element={<EraNarrativeView />} />
        <Route path="page/:pageSlug" element={<PageView />} />
        <Route path="graph" element={<Deferred><GraphView /></Deferred>} />
        <Route path="timeline" element={<Deferred><TimelineView /></Deferred>} />
        <Route path="compare" element={<Deferred><CompareView /></Deferred>} />
      </Route>
      <Route path="*" element={<Navigate replace to="/" />} />
    </Routes>
  );
}
