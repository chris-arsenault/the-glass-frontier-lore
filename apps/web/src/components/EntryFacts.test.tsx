import { render, screen } from "@testing-library/react";
import { MemoryRouter } from "react-router-dom";
import { describe, expect, it } from "vitest";
import type { EntryFact } from "../types/canon";
import { CompactEntryFacts, EntryInfobox } from "./EntryFacts";

const facts: EntryFact[] = [
  { id: "founded", label: "Founded", value: "2052 CE", links: undefined },
  {
    id: "governs",
    label: "Governs",
    value: undefined,
    links: [{ entry_id: "sithari", title: "Sithari", route: "/glass-frontier/entry/sithari" }],
  },
];

describe("EntryInfobox", () => {
  it("renders a titled encyclopedia table with aliases, values and links", () => {
    render(<MemoryRouter><EntryInfobox
      aliases={["The Compact"]}
      facts={facts}
      taxonomy="faction · government"
      title="Tempered Accord"
    /></MemoryRouter>);

    expect(screen.getByRole("complementary", { name: "Tempered Accord facts" })).toBeInTheDocument();
    expect(screen.getByText("faction · government")).toBeInTheDocument();
    expect(screen.getByText("The Compact")).toBeInTheDocument();
    expect(screen.getByText("2052 CE")).toBeInTheDocument();
    expect(screen.getByRole("link", { name: "Sithari" })).toHaveAttribute(
      "href", "/glass-frontier/entry/sithari",
    );
  });

  it("omits an empty infobox and renders the compact comparison table", () => {
    const { container } = render(<MemoryRouter>
      <EntryInfobox aliases={[]} facts={[]} taxonomy="concept" title="Empty" />
      <CompactEntryFacts facts={facts} />
    </MemoryRouter>);

    expect(screen.queryByRole("complementary")).not.toBeInTheDocument();
    expect(container.querySelector(".entry-facts--compact")).toBeInTheDocument();
  });
});
