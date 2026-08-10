import type { Nullable, Optional } from "./types/canon";

export interface AuthConfig {
  domain: string;
  clientId: string;
}

export interface AppConfig {
  editorialApiUrl: string;
  auth: Nullable<AuthConfig>;
}

declare global {
  interface Window {
    __APP_CONFIG__: Optional<AppConfig>;
  }
}

export function appConfig(): AppConfig {
  const config = window.__APP_CONFIG__;
  if (!config) {
    throw new Error("config.js did not define window.__APP_CONFIG__");
  }
  return config;
}
