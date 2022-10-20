echo "Checking if Homebrew is installed..."
if [ ! -f /usr/local/bin/brew ]; then
	echo "Homebrew not found. Installing now."
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Checking if Oh-My-Zsh is installed..."
if [ ! -d $HOME/.oh-my-zsh ]; then
	echo "Oh My Zsh not found. Installing now."
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi


echo "Checking if Vundle (vim plugin manager) is installed..."
if [ ! -d $HOME/.vim/bundle/Vundle.vim ]; then
	echo "Vim Package Manager Vundle not found. Installing now."
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall
fi

echo "Checking if git config is installed..."
if [ ! -f $HOME/.gitconfig ]; then
    echo "git config not found. Installing now."
    cp ./.gitconfig $HOME/.gitconfig
fi

echo "Checking if git shell completion is installed..."
if [ ! -f $HOME/.git-completion.zsh ]; then
        echo "git shell completion not found. Installing now."
	curl -o $HOME/.git-completion.zsh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
fi

echo "Installing required programs with brew..."
brew bundle --file=.Brewfile

