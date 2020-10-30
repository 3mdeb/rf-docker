#!/bin/bash

version="$(cat ./VERSION)"
auto-changelog --template keepachangelog --output CHANGELOG.md --unreleased --commit-limit=0
git add CHANGELOG.md
git commit -sm "CHANGELOG.md: update to v${version}"
