import type { ReactNode } from "react";
import type { Nullable } from "../types/canon";

interface ViewHeaderProps {
  eyebrow: Nullable<ReactNode>;
  title: string;
  description: Nullable<ReactNode>;
  actions: Nullable<ReactNode>;
}

export function ViewHeader({ eyebrow, title, description, actions }: ViewHeaderProps) {
  return (
    <header className="view-header">
      <div className="view-header__copy">
        {eyebrow && <div className="view-header__eyebrow">{eyebrow}</div>}
        <h1>{title}</h1>
        {description && <div className="view-header__description">{description}</div>}
      </div>
      {actions && <div className="view-header__actions">{actions}</div>}
    </header>
  );
}
