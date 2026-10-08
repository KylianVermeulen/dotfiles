#!/usr/bin/env bash

cursor_user_dir="$HOME/Library/Application Support/Cursor/User"
dotfiles_cursor_dir="$HOME/dotfiles/cursor"

read -r -p "symlink ./cursor/* files into Cursor and install its extensions? [y|N] " response
if [[ $response =~ (y|yes|Y) ]]; then
  now=$(date +"%Y.%m.%d.%H.%M.%S")
  mkdir -p "$cursor_user_dir"

  for file in settings.json keybindings.json; do
    target="$cursor_user_dir/$file"

    if [[ -e $target && ! -L $target ]]; then
      mkdir -p ~/dotfiles_backup/$now/cursor
      mv "$target" ~/dotfiles_backup/$now/cursor/$file
      echo "Backup saved as ~/dotfiles_backup/$now/cursor/$file"
    fi

    unlink "$target" > /dev/null 2>&1
    ln -s "$dotfiles_cursor_dir/$file" "$target"
  done

  if command -v cursor > /dev/null 2>&1; then
    while read -r extension; do
      [[ -n $extension ]] && cursor --install-extension "$extension"
    done < "$dotfiles_cursor_dir/extensions.txt"
  else
    echo "The cursor command is not installed. Install it from Cursor > Install 'cursor' command, then run this script again."
  fi
fi
