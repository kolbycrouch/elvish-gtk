#!/bin/sh
mkdir -p target
echo "Building elvish..."
GOBIN=$(pwd)/target CGO_ENABLED=1 go install -trimpath -ldflags="-s -w" -buildmode=pie src.elv.sh/cmd/elvish@$(go list -f '{{.Version}}' -m src.elv.sh)
echo "Building glib plugin..."
go build -buildmode=plugin -trimpath -ldflags="-s -w" -o target/glib.so glib/glib.go
echo "Building gtk plugin..."
go build -buildmode=plugin -trimpath -ldflags="-s -w" -o target/gtk.so gtk/gtk.go

