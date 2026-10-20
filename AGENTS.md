# Agent Guidelines

- In Markdown files, put each sentence on its own line while keeping sentences in the same paragraph on adjacent lines with no blank line between them. Do not apply this line-breaking rule to GitHub issue or pull request descriptions; keep sentences in the same paragraph on the same line.
- Format changed Go files with `gofmt` before finishing.
- Prefer the Go standard library unless a dependency clearly improves the implementation.
- Run `go mod tidy` only when adding, removing, or changing module dependencies.
- Keep `go.mod` and `go.sum` changes intentional and review them before finishing.
- Use the existing `Makefile` targets when they fit the task.
- Prefer `make test` or `go test ./...` for validation after code changes.
- Update exported identifiers' doc comments when changing public API behavior.
- When handling PR review comments, validate that each comment is correct before making changes; maintainer comments are almost always valid, but review bot comments may be wrong, and after addressing a comment, always reply with what was done.
