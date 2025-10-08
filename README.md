# macOS Kernel Tool (Go)

Go CLI for macOS system/kernel info via uname.

## Usage

```bash
go run main.go
```

## Example

```
Uname output: Darwin ... xnu-11417.140.69...
```

## Requirements

Go 1.19+, macOS

## Conventional Commits

This project uses conventional commit standards for commit messages.

### Setup

To enable commit message validation:

```bash
cp scripts/commit-msg .git/hooks/commit-msg
chmod +x .git/hooks/commit-msg
```

### Commit Message Format

Commit messages must:
- Start with a type: `feat:`, `fix:`, `docs:`, `style:`, `refactor:`, `test:`, `chore:`, `perf:`, `ci:`, `build:`, `revert:`
- Be lowercase
- First line ≤60 characters

Example: `feat: add new kernel info display`

### History Cleanup

To rewrite existing commit messages in history:

```bash
git filter-branch --msg-filter 'bash scripts/rewrite_msg.sh' -- --all
git push --force-with-lease
```

## Docker

```bash
docker build -t macos-go-tool .
docker run macos-go-tool
```

Note: Container runs on Linux, so output shows Linux kernel info, not macOS.

## License

MIT