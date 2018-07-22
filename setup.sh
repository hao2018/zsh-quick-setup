#!/bin/bash

# Step 1: Set zsh as default shell
chsh -s $(which zsh)

# Step 2: Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Step 3: Install plugins - zsh-syntax-highlighting and zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Step 4: Update .zshrc config 
sed -i 's/git/git zsh-syntax-highlighting colored-man-pages zsh-autosuggestions/g' ~/.zshrc
sed -i 's/robbyrussell/af-magic/g' ~/.zshrc

# Step 5: Apply the changes
source ~/.zshrc