import type { Nullable, Optional } from "../types/canon";

const TOKENS_KEY = "tsonu-canon.oidc.tokens";
const PKCE_KEY = "tsonu-canon.oidc.pkce";

export interface SessionTokens {
  idToken: string;
  accessToken: string;
  refreshToken: Optional<string>;
  expiresAt: number;
}

export interface PkceState {
  verifier: string;
  state: string;
  returnTo: string;
}

function read<T>(key: string): Nullable<T> {
  const value = window.sessionStorage.getItem(key);
  if (!value) return null;
  try {
    return JSON.parse(value) as T;
  } catch {
    return null;
  }
}

export const readSession = () => read<SessionTokens>(TOKENS_KEY);
export const readPkce = () => read<PkceState>(PKCE_KEY);

export function writeSession(tokens: SessionTokens): void {
  window.sessionStorage.setItem(TOKENS_KEY, JSON.stringify(tokens));
}

export function writePkce(state: PkceState): void {
  window.sessionStorage.setItem(PKCE_KEY, JSON.stringify(state));
}

export function clearSession(): void {
  window.sessionStorage.removeItem(TOKENS_KEY);
  window.sessionStorage.removeItem(PKCE_KEY);
}

export function clearPkce(): void {
  window.sessionStorage.removeItem(PKCE_KEY);
}
