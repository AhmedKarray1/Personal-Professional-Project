#!/usr/bin/env bash

# Exit on error
set -e

# Run flutter analyze and format
flutter analyze

# Run flutter lint
flutter pub run lint
