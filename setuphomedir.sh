read -r -p "symlink ./homedir/* files in ~/ (these are the dotfiles)? [y|N] " response
if [[ $response =~ (y|yes|Y) ]]; then
  pushd homedir > /dev/null 2>&1
  now=$(date +"%Y.%m.%d.%H.%M.%S")

  for file in .*; do
    if [[ $file == "." || $file == ".." ]]; then
      continue
    fi

    # If the file exists:
    if [[ -e ~/$file ]]; then
        mkdir -p ~/dotfiles_backup/$now
        mv ~/$file ~/dotfiles_backup/$now/$file
    fi

    # Symlink might still exist
    unlink ~/$file > /dev/null 2>&1
    # Create the link
    ln -s ~/dotfiles/homedir/$file ~/$file
  done

  popd > /dev/null 2>&1
fi
