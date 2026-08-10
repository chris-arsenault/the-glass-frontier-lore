interface CanonMarkProps {
  compact: boolean;
}

export function CanonMark({ compact }: CanonMarkProps) {
  return (
    <svg
      className={compact ? "canon-mark canon-mark--compact" : "canon-mark"}
      viewBox="0 0 64 64"
      role="img"
      aria-label="Tsonu Canon"
    >
      <circle className="canon-mark__orbit" cx="32" cy="32" r="25" />
      <path className="canon-mark__leaf" d="M17 20c9 1 14 5 15 12v18c-2-7-7-11-15-12V20Z" />
      <path className="canon-mark__leaf" d="M47 20c-9 1-14 5-15 12v18c2-7 7-11 15-12V20Z" />
      <path className="canon-mark__axis" d="M11 39c13 6 29 6 42 0" />
      <circle className="canon-mark__star" cx="50" cy="16" r="3" />
    </svg>
  );
}
