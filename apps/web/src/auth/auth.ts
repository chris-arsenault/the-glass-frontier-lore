import { appConfig } from "../config";
import type { Optional } from "../types/canon";
import { randomString, sha256Base64Url } from "./pkce";
import { clearPkce, clearSession, readPkce, readSession, writePkce, writeSession } from "./session";

interface TokenResponse {
  id_token: string;
  access_token: string;
  refresh_token: Optional<string>;
  expires_in: number;
}

export class AuthRequiredError extends Error {
  constructor() {
    super("Editorial access requires sign-in");
    this.name = "AuthRequiredError";
  }
}

function authConfig() {
  const config = appConfig().auth;
  if (!config) throw new AuthRequiredError();
  return config;
}

async function tokenRequest(body: URLSearchParams): Promise<TokenResponse> {
  const config = authConfig();
  const response = await fetch(`https://${config.domain}/oauth2/token`, {
    method: "POST",
    headers: { "Content-Type": "application/x-www-form-urlencoded" },
    body,
  });
  if (!response.ok) throw new AuthRequiredError();
  return (await response.json()) as TokenResponse;
}

function storeTokens(tokens: TokenResponse, previousRefresh: Optional<string>): void {
  writeSession({
    idToken: tokens.id_token,
    accessToken: tokens.access_token,
    refreshToken: tokens.refresh_token ?? previousRefresh,
    expiresAt: Date.now() + tokens.expires_in * 1000,
  });
}

export async function beginSignIn(returnTo: string): Promise<never> {
  const config = authConfig();
  const verifier = randomString();
  const state = randomString(24);
  writePkce({ verifier, state, returnTo });
  const challenge = await sha256Base64Url(verifier);
  const url = new URL(`https://${config.domain}/oauth2/authorize`);
  url.searchParams.set("response_type", "code");
  url.searchParams.set("client_id", config.clientId);
  url.searchParams.set("redirect_uri", `${window.location.origin}/auth/callback`);
  url.searchParams.set("scope", "openid email profile");
  url.searchParams.set("state", state);
  url.searchParams.set("code_challenge", challenge);
  url.searchParams.set("code_challenge_method", "S256");
  window.location.assign(url.toString());
  return new Promise(() => undefined);
}

export async function completeSignIn(code: string, state: string): Promise<string> {
  const config = authConfig();
  const pkce = readPkce();
  if (!pkce || pkce.state !== state) throw new Error("The sign-in state did not match this tab");
  const tokens = await tokenRequest(new URLSearchParams({
    grant_type: "authorization_code",
    client_id: config.clientId,
    code,
    redirect_uri: `${window.location.origin}/auth/callback`,
    code_verifier: pkce.verifier,
  }));
  storeTokens(tokens, undefined);
  clearPkce();
  return pkce.returnTo;
}

async function refresh(refreshToken: string): Promise<void> {
  const config = authConfig();
  const tokens = await tokenRequest(new URLSearchParams({
    grant_type: "refresh_token",
    client_id: config.clientId,
    refresh_token: refreshToken,
  }));
  storeTokens(tokens, refreshToken);
}

export async function requireIdToken(): Promise<string> {
  let session = readSession();
  if (!session) throw new AuthRequiredError();
  if (Date.now() + 60_000 < session.expiresAt) return session.idToken;
  if (!session.refreshToken) {
    clearSession();
    throw new AuthRequiredError();
  }
  try {
    await refresh(session.refreshToken);
  } catch (error) {
    clearSession();
    throw error;
  }
  session = readSession();
  if (!session) throw new AuthRequiredError();
  return session.idToken;
}
