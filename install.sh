#!/bin/sh

BUILD=debug # Change to release for a release build
PROGRAM=deskentry

SOURCE="$PWD/.build/$BUILD/$PROGRAM"
SOURCE_DIR="$PWD/.build/$BUILD"
BIN_DIR="$HOME/.local/bin"

# Not the best, but it works.
if [ -d "$BIN_DIR" ]; then
    echo "Installing..."
else
    mkdir -p "$BIN_DIR"
    echo "Installing..."
fi

if [ -d "$SOURCE_DIR" ]; then
    cp "$SOURCE" "$BIN_DIR/$PROGRAM"
    chmod +x "$BIN_DIR/$PROGRAM"

    echo "Installed $PROGRAM to $BIN_DIR/$PROGRAM"
else
    echo "$PROGRAM not found."
fi
