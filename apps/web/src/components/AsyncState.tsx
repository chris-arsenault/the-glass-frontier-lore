import { Link } from "react-router-dom";
import { CanonMark } from "./CanonMark";

export function LoadingState() {
  return (
    <main className="state-page" aria-live="polite">
      <CanonMark compact={false} />
      <p>Opening the canon…</p>
    </main>
  );
}

interface ErrorStateProps {
  title: string;
  detail: string;
}

export function ErrorState({ title, detail }: ErrorStateProps) {
  return (
    <main className="state-page">
      <CanonMark compact={false} />
      <h1>{title}</h1>
      <p>{detail}</p>
      <Link className="text-link" to="/">
        Return to the worlds
      </Link>
    </main>
  );
}
