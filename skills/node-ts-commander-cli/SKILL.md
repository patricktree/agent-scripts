---
name: node-ts-commander-cli
description: Create or refactor command-line interfaces in Node.js with TypeScript. Use when the user asks to build a CLI, add CLI commands/options, or design CLI UX; prefer commander.js with @commander-js/extra-typings for typing.
---

# Node Ts Commander CLI

## Core workflow

- Use Node.js + TypeScript for all new CLIs.
- Use `commander` with `@commander-js/extra-typings` for typed commands/options.
- Prefer a single `src/cli.ts` entry with `#!/usr/bin/env node` when packaging a bin.
- Include strict option parsing, helpful `--help`, and clear error messages.
- When refactoring an existing CLI, preserve behavior but migrate to commander + extra-typings.

## Minimal template

```ts
#!/usr/bin/env node
import { Command } from "@commander-js/extra-typings";

const program = new Command();

program
  .name("app")
  .description("...")
  .version("0.1.0")
  .option("-v, --verbose", "verbose output");

program
  .command("do-thing")
  .description("...")
  .option("-f, --force", "force operation")
  .action((opts) => {
    if (opts.verbose) console.log("...");
  });

program.parse();
```

## Notes

- Keep CLI surface consistent: kebab-case commands, short flags where obvious, long flags for clarity.
