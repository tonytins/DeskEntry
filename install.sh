#!/bin/sh

BUILD_MODE=debug # Change to release for a release build
PROGRAM=deskentry

BUILD_DIR="$PWD/.build/$BUILD_MODE"
EXEC="$BUILD_DIR/$PROGRAM"
BIN_DIR="$HOME/.local/bin"


if [ ! -d "$BUILD_DIR" ]; then
    echo "Executable not found."
    exit 1
fi

if [ ! -d "$BIN_DIR" ]; then
    echo "Creating local bin directory."
    mkdir -p "$BIN_DIR"
fi

cp "$EXEC" "$BIN_DIR/$PROGRAM"
chmod +x "$BIN_DIR/$PROGRAM"

echo "Installed $PROGRAM to $BIN_DIR/$PROGRAM"
