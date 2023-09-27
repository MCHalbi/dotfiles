# If running bash, source ~/.bashrc (if it exists)
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
      . "$HOME/.bashrc"
    fi
fi

# Set PATH so it includes my private bin directories (if they exists)
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi

# Adding .scripts directory to PATH
if [ -d "$HOME/.scripts" ]; then
  PATH="$HOME/.scripts:$PATH"
fi

# Adding paths for other programs
if [ -d "/opt/pycharm-2023.1.2" ]; then
  PATH="/opt/pycharm-2023.1.2/bin:$PATH"
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
