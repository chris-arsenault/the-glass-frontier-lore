import type { ComponentPropsWithoutRef } from "react";
import ReactMarkdown from "react-markdown";
import { Link } from "react-router-dom";
import remarkGfm from "remark-gfm";

function MarkdownLink({ href, children, ...props }: ComponentPropsWithoutRef<"a">) {
  if (href?.startsWith("/")) {
    return <Link to={href}>{children}</Link>;
  }
  return (
    <a href={href} rel="noreferrer" target="_blank" {...props}>
      {children}
    </a>
  );
}

interface MarkdownContentProps {
  markdown: string;
}

export function MarkdownContent({ markdown }: MarkdownContentProps) {
  return (
    <div className="prose">
      <ReactMarkdown remarkPlugins={[remarkGfm]} components={{ a: MarkdownLink }}>
        {markdown}
      </ReactMarkdown>
    </div>
  );
}
