#!/usr/bin/env sh
set -eu

script_path=$(realpath "$0")
repo_root=$(dirname "$script_path")

echo "repo: ${repo_root}"

link_dir() {
  src="$1"
  dest="$2"

  mkdir -p "$(dirname "$dest")"
  ln -sfn "$src" "$dest"
  echo "linked: $dest -> $src"
}

# symlinks
link_dir "${repo_root}/.doom.d" "${HOME}/.doom.d"
link_dir "${repo_root}/emacs" "${HOME}/.config/emacs"
link_dir "${repo_root}/config" "${HOME}/.i3/config"
