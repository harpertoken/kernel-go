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

## Docker

```bash
docker build -t macos-go-tool .
docker run macos-go-tool
```

Note: Container runs on Linux, so output shows Linux kernel info, not macOS.

## License

MIT