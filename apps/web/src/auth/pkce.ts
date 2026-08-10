function base64Url(bytes: Uint8Array): string {
  const binary = Array.from(bytes, (byte) => String.fromCharCode(byte)).join("");
  return window.btoa(binary).replaceAll("+", "-").replaceAll("/", "_").replaceAll("=", "");
}

export function randomString(length = 32): string {
  const bytes = new Uint8Array(length);
  window.crypto.getRandomValues(bytes);
  return base64Url(bytes);
}

export async function sha256Base64Url(value: string): Promise<string> {
  const input = new TextEncoder().encode(value);
  const digest = await window.crypto.subtle.digest("SHA-256", input);
  return base64Url(new Uint8Array(digest));
}
