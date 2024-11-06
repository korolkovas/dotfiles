#!/bin/bash

set -e

echo "🚀 Starting dotfiles installation..."

# Create symbolic links
echo "📁 Creating symbolic links..."
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc

# Install required packages
echo "📦 Installing required packages..."
if command -v apt-get >/dev/null; then
    sudo apt-get update
    sudo apt-get install -y zsh curl git fzf htop
fi

# Install oh-my-zsh if not present
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "🛠️ Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Install Powerlevel10k theme
if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" ]; then
    echo "💅 Installing Powerlevel10k theme..."
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi

# Install zsh plugins
echo "🔌 Installing Zsh plugins..."
if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

# Setup VS Code
echo "🔧 Setting up VS Code..."
if [ -d "$HOME/.vscode-server" ]; then
    mkdir -p "$HOME/.vscode-server/data/Machine"
    ln -sf ~/.dotfiles/vscode/settings.json "$HOME/.vscode-server/data/Machine/settings.json"
fi

# Change default shell to zsh if not already
if [ "$SHELL" != "$(which zsh)" ]; then
    echo "🐚 Changing default shell to Zsh..."
    chsh -s $(which zsh)
fi

echo "✨ Installation complete! Please restart your shell."
echo "💡 Tip: Run 'p10k configure' to set up your Powerlevel10k theme."
