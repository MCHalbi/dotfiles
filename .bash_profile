# Load the default .profile
if [ -s "$HOME/.profile" ]; then
  source "$HOME/.profile"
fi

# Load RVM into a shell session *as a function*
if [ -s "$HOME/.rvm/scripts/rvm" ]; then
  source "$HOME/.rvm/scripts/rvm"
fi
