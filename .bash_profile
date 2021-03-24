# Load the default .profile
if [ -s "$HOME/.profile" ]; then
  . "$HOME/.profile"
fi

# Load RVM into a shell session *as a function*
if [ -s "$HOME/.rvm/scripts/rvm" ]; then
  . "$HOME/.rvm/scripts/rvm"
fi
