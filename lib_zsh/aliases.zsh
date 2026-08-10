# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias iplocal="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Show active network interfaces
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

# Flush the DNS on Mac
alias dnsflush='dscacheutil -flushcache'

# Simple Program Name Shortening
alias g=git
alias dc=docker compose
alias pn=pnpm


export JAVA_21_HOME=/Users/kylianvermeulen/Library/Java/JavaVirtualMachines/corretto-21.0.7/Contents/Home
export JAVA_23_HOME=/Users/kylianvermeulen/Library/Java/JavaVirtualMachines/corretto-23.0.2/Contents/Home
alias java21='export JAVA_HOME=$JAVA_21_HOME'
alias java23='export JAVA_HOME=$JAVA_23_HOME'

# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; mas upgrade; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; sudo gem cleanup'
alias install_rosetta='sudo softwareupdate --install-rosetta --agree-to-license'

alias lookbusy="cat /dev/urandom | hexdump -C | grep \"34 32\""
alias random="od -d /dev/urandom"

alias tx=tmuxinator
alias pub_idrsa='cat ~/.ssh/id_rsa.pub | pbcopy'
alias sail='./vendor/bin/sail'

alias enablesleep='sudo pmset -a disablesleep 0'
alias disablesleep='sudo pmset -a disablesleep 1'

alias writingexpert="cat /Users/kylianvermeulen/Downloads/You\ are\ an\ academic\ writing\ expert..md"

alias probe="ffprobe -v quiet -print_format json -show_format -show_streams"

alias swiftlines="find . -name '*.swift' | xargs wc -l | sort -n"
alias findlines='function _findlines() { find . -name "*.$1" | xargs wc -l | sort -n; }; _findlines'

alias esttokens='function esttokens() { 
  find . -name "*.$1" -type f -print0 | xargs -0 -I{} bash -c "echo -n \"{}: \"; wc -w < \"{}\" | xargs -I% echo \"scale=0; % * 1.3 / 1\" | bc"; 
}; esttokens'

alias esttokens2='function esttokens2() { 
  echo "Estimating tokens in *.$1 files...";
  total=0;
  find . -name "*.$1" -type f -print0 | 
  while IFS= read -r -d $'\0' file; do
    wordcount=$(wc -w < "$file");
    tokenest=$(echo "scale=0; $wordcount * 1.3 / 1" | bc);
    total=$((total + tokenest));
    printf "%-60s %8d tokens\n" "$file:" "$tokenest";
  done | sort -k2 -n;
  echo "----------------------------------------";
  echo "Total estimated tokens: $total";
}; esttokens2'

alias esttokens3='function esttokens3() { 
  echo "Estimating tokens in *.$1 files...";
  total_words=0;
  total_tokens=0;
  
  while IFS= read -r file; do
    if [ -f "$file" ]; then
      wordcount=$(wc -w < "$file" 2>/dev/null);
      if [ $? -eq 0 ]; then
        tokenest=$(echo "scale=0; $wordcount * 1.3 / 1" | bc 2>/dev/null || echo 0);
        total_words=$((total_words + wordcount));
        total_tokens=$((total_tokens + tokenest));
        printf "%-60s %8d words %8d tokens\n" "$file:" "$wordcount" "$tokenest";
      else
        printf "%-60s %8s %8s\n" "$file:" "ERROR" "ERROR";
      fi
    fi
  done < <(find . -name "*.$1" -type f -print | sort);
  
  echo "----------------------------------------";
  echo "Total words: $total_words";
  echo "Total estimated tokens: $total_tokens";
}; esttokens3'

alias updatenodelts='nvm install "lts/*" --reinstall-packages-from="$(nvm current)"'

alias fixaudio='sudo killall coreaudiod'

#alias claude="/Users/kylianvermeulen/.claude/local/claude"

alias findlibtestingmacros='find /Applications/Xcode.app -name "libTestingMacros.dylib" 2>/dev/null'

# Open a Renovate branch in a git worktree and launch OpenCode
function renovate-worktree() {
  local branch="${1}"

  if [[ -z "$branch" ]]; then
    echo "Usage: renovate-worktree <branch-name>"
    return 1
  fi

  # Find the repo root from wherever you are
  local repo_root
  repo_root=$(git rev-parse --show-toplevel 2>/dev/null)
  if [[ $? -ne 0 ]]; then
    echo "Error: not inside a git repository"
    return 1
  fi

  local worktree_path="$repo_root/.worktrees/$branch"

  # Fetch the branch from remote
  echo "Fetching branch '$branch'..."
  git -C "$repo_root" fetch origin "$branch" 2>/dev/null || {
    echo "Error: could not fetch '$branch' from origin"
    return 1
  }

  # Create the worktree if it doesn't exist yet
  if [[ ! -d "$worktree_path" ]]; then
    echo "Creating worktree at $worktree_path..."
    git -C "$repo_root" worktree add "$worktree_path" "origin/$branch" || return 1
  else
    echo "Worktree already exists at $worktree_path"
  fi

  # Open OpenCode in the worktree
  echo "Opening OpenCode in $worktree_path..."
  cd "$worktree_path" && opencode .
}

alias disable-microsoft-update-agent='launchctl disable gui/$(id -u)/com.microsoft.update.agent'

alias print-disabled='launchctl print-disabled gui/$(id -u)'

alias ns='cd ~/Documents/Code/NS/'
alias lift='cd ~/Documents/Code/Liftix/Liftix/'

