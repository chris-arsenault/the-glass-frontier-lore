import { useQuery } from "@tanstack/react-query";
import { useState } from "react";
import { AuthRequiredError, beginSignIn } from "../auth/auth";
import { appConfig } from "../config";
import { ApiError } from "../data/api";
import { editorialQuery } from "../data/queries";
import type { EditorialEntry } from "../types/canon";
import "./EditorialPanel.css";

interface EditorialPanelProps {
  worldId: string;
  entryId: string;
}

export function EditorialPanel({ worldId, entryId }: EditorialPanelProps) {
  const [requested, setRequested] = useState(false);
  const editorial = useQuery(editorialQuery(worldId, entryId, requested));

  if (!requested) {
    return (
      <section className="editorial-panel">
        <div className="context-panel__heading">Editorial layer</div>
        <p>Questions, entry logs and drafting history are kept outside the public canon.</p>
        <button type="button" onClick={() => setRequested(true)}>
          Open editorial notes
        </button>
      </section>
    );
  }

  if (editorial.isPending) {
    return (
      <section className="editorial-panel">
        <div className="context-panel__heading">Editorial layer</div>
        <p>Checking your session…</p>
      </section>
    );
  }

  if (editorial.isError) {
    return <EditorialError error={editorial.error} onRetry={() => void editorial.refetch()} />;
  }

  return <EditorialContent editorial={editorial.data} />;
}

function EditorialError({ error, onRetry }: { error: Error; onRetry: () => void }) {
  const needsSignIn =
    error instanceof AuthRequiredError ||
    (error instanceof ApiError && [401, 403].includes(error.status));

  if (needsSignIn && appConfig().auth === null) {
    return (
      <section className="editorial-panel editorial-panel--locked">
        <div className="context-panel__heading">Editorial layer</div>
        <p>Editorial sign-in is not configured in this build.</p>
      </section>
    );
  }

  if (needsSignIn) {
    return (
      <section className="editorial-panel editorial-panel--locked">
        <div className="context-panel__heading">Editorial layer</div>
        <p>The private notes need an Ahara sign-in.</p>
        <button
          type="button"
          onClick={() => void beginSignIn(`${window.location.pathname}${window.location.search}`)}
        >
          Sign in and return
        </button>
      </section>
    );
  }

  return (
    <section className="editorial-panel editorial-panel--locked">
      <div className="context-panel__heading">Editorial layer</div>
      <p>The private notes are unavailable.</p>
      <button type="button" onClick={onRetry}>
        Try again
      </button>
    </section>
  );
}

function EditorialContent({ editorial }: { editorial: EditorialEntry }) {
  const unread = editorial.provenance.filter((record) => !record.reviewed || record.stale).length;
  return (
    <section className="editorial-panel editorial-panel--open">
      <div className="context-panel__heading">Editorial layer</div>
      <dl>
        <div>
          <dt>Status</dt>
          <dd>{editorial.status ?? "undeclared"}</dd>
        </div>
        <div>
          <dt>Unread blocks</dt>
          <dd>{unread}</dd>
        </div>
      </dl>
      {editorial.questions.length > 0 && (
        <div className="editorial-panel__section">
          <h3>Open commentary</h3>
          <ul>
            {editorial.questions.map((question) => (
              <li key={`${question.raised}:${question.text}`}>
                <p>{question.text}</p>
                {question.on && <blockquote>{question.on}</blockquote>}
                {question.raised && <small>Raised {question.raised}</small>}
              </li>
            ))}
          </ul>
        </div>
      )}
      {editorial.missing_facts.length > 0 && (
        <div className="editorial-panel__section">
          <h3>Facts to establish</h3>
          <ul>
            {editorial.missing_facts.map((fact) => <li key={fact.id}>{fact.label}</li>)}
          </ul>
        </div>
      )}
      {editorial.log.length > 0 && (
        <div className="editorial-panel__section">
          <h3>Entry log</h3>
          <ol>
            {editorial.log.map((item) => (
              <li key={item}>{item}</li>
            ))}
          </ol>
        </div>
      )}
      <p className="editorial-panel__source">{editorial.source_file}</p>
    </section>
  );
}
