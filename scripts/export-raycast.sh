#!/usr/bin/env zsh
set -euo pipefail

repo_root="${0:A:h:h}"
output="$repo_root/raycast/com.raycast.macos.plist"

mkdir -p "${output:h}"
defaults export com.raycast.macos "$output"

echo "Exported Raycast preferences to: $output"
