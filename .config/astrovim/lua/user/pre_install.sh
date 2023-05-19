echo "Installing brew package manager."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
echo "Installing NodeJS"
brew install nvm
nvm install 16.0
echo "Installing GH dependencies"
brew install gh
brew install lazygit
echo "Installing ripgrep"
brew install ripgrep
echo "Installing python dependencies"
brew install pyenv
eval "$(pyenv init -)"
pyenv install 3.10
pyenv global 3.10
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo "Installing openjdk"
brew install openjdk

