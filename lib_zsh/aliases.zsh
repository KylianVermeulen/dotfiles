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

# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; mas upgrade; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; sudo gem cleanup'
alias install_rosetta='sudo softwareupdate --install-rosetta --agree-to-license'

alias lookbusy="cat /dev/urandom | hexdump -C | grep \"34 32\""
alias random="od -d /dev/urandom"

alias tx=tmuxinator
alias pub_idrsa='cat ~/.ssh/id_rsa.pub | pbcopy'
alias sail='./vendor/bin/sail'

alias writingexpert="cat /Users/kylianvermeulen/Downloads/You\ are\ an\ academic\ writing\ expert..md"

alias probe="ffprobe -v quiet -print_format json -show_format -show_streams"

alias swiftlines="find . -name '*.swift' | xargs wc -l | sort -n"
alias findlines='function _findlines() { find . -name "*.$1" | xargs wc -l | sort -n; }; _findlines'

