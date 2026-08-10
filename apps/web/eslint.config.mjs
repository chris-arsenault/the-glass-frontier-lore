import * as aharaRules from "@ahara/standards/eslint-rules";
import js from "@eslint/js";
import prettier from "eslint-config-prettier";
import jsxA11y from "eslint-plugin-jsx-a11y";
import react from "eslint-plugin-react";
import reactHooks from "eslint-plugin-react-hooks";
import reactPerf from "eslint-plugin-react-perf";
import reactRefresh from "eslint-plugin-react-refresh";
import sonarjs from "eslint-plugin-sonarjs";
import globals from "globals";
import tseslint from "typescript-eslint";

const localRules = {
  "max-jsx-props": aharaRules.maxJsxProps,
  "no-direct-fetch": aharaRules.noDirectFetch,
  "no-direct-store-import": aharaRules.noDirectStoreImport,
  "no-escape-hatches": aharaRules.noEscapeHatches,
  "no-inline-styles": aharaRules.noInlineStyles,
  "no-js-file-extension": aharaRules.noJsFileExtension,
  "no-manual-async-state": aharaRules.noManualAsyncState,
  "no-manual-expand-state": aharaRules.noManualExpandState,
  "no-manual-view-header": aharaRules.noManualViewHeader,
  "no-non-vitest-testing": aharaRules.noNonVitestTesting,
  "no-raw-undefined-union": aharaRules.noRawUndefinedUnion,
};

export default tseslint.config(
  {
    ignores: ["dist", "coverage", "node_modules"],
  },
  js.configs.recommended,
  ...tseslint.configs.recommendedTypeChecked,
  {
    files: ["**/*.{js,mjs}"],
    ...tseslint.configs.disableTypeChecked,
  },
  {
    files: ["**/*.{ts,tsx}"],
    languageOptions: {
      ecmaVersion: 2022,
      globals: globals.browser,
      parserOptions: {
        projectService: true,
        tsconfigRootDir: import.meta.dirname,
      },
    },
    settings: {
      react: { version: "detect" },
    },
    plugins: {
      local: { rules: localRules },
      react,
      "react-hooks": reactHooks,
      "react-refresh": reactRefresh,
      "react-perf": reactPerf,
      "jsx-a11y": jsxA11y,
      sonarjs,
    },
    rules: {
      ...react.configs.recommended.rules,
      ...react.configs["jsx-runtime"].rules,
      ...reactHooks.configs.flat.recommended.rules,
      ...jsxA11y.flatConfigs.recommended.rules,
      "react-refresh/only-export-components": ["warn", { allowConstantExport: true }],
      complexity: ["error", 10],
      "max-lines": ["error", { max: 400, skipBlankLines: true, skipComments: true }],
      "max-lines-per-function": [
        "error",
        { max: 75, skipBlankLines: true, skipComments: true },
      ],
      "max-depth": ["warn", 4],
      "local/max-jsx-props": "warn",
      "local/no-inline-styles": "error",
      "local/no-direct-fetch": "error",
      "local/no-direct-store-import": "warn",
      "local/no-escape-hatches": "error",
      "local/no-manual-async-state": "warn",
      "local/no-manual-view-header": "warn",
      "local/no-manual-expand-state": "warn",
      "local/no-raw-undefined-union": "warn",
      "local/no-non-vitest-testing": "error",
      "local/no-js-file-extension": "error",
    },
  },
  prettier
);
