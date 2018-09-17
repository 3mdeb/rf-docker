#!/bin/bash

version="$(cat ./VERSION)"
auto-changelog --template keepachangelog --output CHANGELOG.md --unreleased --commit-limit=0
git add CHANGELOG.md
git ci -sm "CHANGELOG.md: update to v${version}"
