import { useQuery } from "@tanstack/react-query";
import { useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { completeSignIn } from "../auth/auth";
import { CanonMark } from "../components/CanonMark";

interface CallbackParameters {
  code: string | null;
  state: string | null;
}

function readCallbackParameters(): CallbackParameters {
  const url = new URL(window.location.href);
  return {
    code: url.searchParams.get("code"),
    state: url.searchParams.get("state"),
  };
}

export function AuthCallbackView() {
  const navigate = useNavigate();
  const parameters = readCallbackParameters();
  const callback = useQuery({
    queryKey: ["auth-callback", parameters.code, parameters.state],
    queryFn: () => completeSignIn(parameters.code!, parameters.state!),
    enabled: Boolean(parameters.code && parameters.state),
    retry: false,
  });

  useEffect(() => {
    if (parameters.code && parameters.state) {
      window.history.replaceState({}, "", window.location.pathname);
    }
    if (callback.data) {
      void navigate(callback.data, { replace: true });
    }
  }, [callback.data, navigate, parameters.code, parameters.state]);

  const missingParameters = !parameters.code || !parameters.state;
  const error = missingParameters
    ? "Cognito returned without an authorization code."
    : callback.error instanceof Error
      ? callback.error.message
      : callback.error
        ? "Sign-in failed"
        : null;

  return (
    <main className="state-page">
      <CanonMark compact={false} />
      <h1>{error ? "Sign-in failed" : "Opening editorial notes"}</h1>
      <p>{error ?? "Returning to the entry…"}</p>
    </main>
  );
}
