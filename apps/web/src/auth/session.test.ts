import { afterEach, describe, expect, it } from "vitest";
import {
  clearPkce,
  clearSession,
  readPkce,
  readSession,
  writePkce,
  writeSession,
} from "./session";

afterEach(() => {
  window.sessionStorage.clear();
});

describe("editorial session storage", () => {
  it("keeps tokens within the current browser tab", () => {
    const tokens = {
      idToken: "id-token",
      accessToken: "access-token",
      refreshToken: "refresh-token",
      expiresAt: 1_900_000_000_000,
    };

    writeSession(tokens);

    expect(readSession()).toEqual(tokens);
    clearSession();
    expect(readSession()).toBeNull();
  });

  it("keeps and clears the PKCE verifier independently", () => {
    const state = {
      verifier: "verifier",
      state: "state",
      returnTo: "/dry-war/entry/dequindre",
    };

    writePkce(state);

    expect(readPkce()).toEqual(state);
    clearPkce();
    expect(readPkce()).toBeNull();
  });

  it("ignores malformed stored data", () => {
    window.sessionStorage.setItem("tsonu-canon.oidc.tokens", "not-json");

    expect(readSession()).toBeNull();
  });
});
