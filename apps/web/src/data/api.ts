import { requireIdToken } from "../auth/auth";

export class ApiError extends Error {
  readonly status: number;

  constructor(status: number, message: string) {
    super(message);
    this.name = "ApiError";
    this.status = status;
  }
}

async function request<T>(url: string, headers: HeadersInit, credentials: RequestCredentials): Promise<T> {
  const response = await fetch(url, {
    credentials,
    headers: { Accept: "application/json", ...headers },
  });
  if (!response.ok) {
    throw new ApiError(response.status, `Request failed with HTTP ${response.status}`);
  }
  return (await response.json()) as T;
}

export function apiGet<T>(path: string): Promise<T> {
  return request<T>(path, {}, "same-origin");
}

export async function authenticatedApiGet<T>(url: string): Promise<T> {
  const token = await requireIdToken();
  return request<T>(url, { Authorization: `Bearer ${token}` }, "omit");
}
