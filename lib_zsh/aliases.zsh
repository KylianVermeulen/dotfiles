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

# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; mas upgrade; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; sudo gem cleanup'

alias lookbusy="cat /dev/urandom | hexdump -C | grep \"34 32\""

alias 10gb="osascript sendMessage.applescript"

export JAVA_14_HOME=/Library/Java/JavaVirtualMachines/jdk-14.0.2.jdk/Contents/Home
export JAVA_13_HOME=/Library/Java/JavaVirtualMachines/jdk-13.0.2.jdk/Contents/Home
export JAVA_15_HOME=/Library/Java/JavaVirtualMachines/jdk-15.jdk/Contents/Home
alias java13='export JAVA_HOME=$JAVA_13_HOME'
alias java14='export JAVA_HOME=$JAVA_14_HOME'
alias java15='export JAVA_HOME=$JAVA_15_HOME'
