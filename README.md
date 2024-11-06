# Dotfiles

This repository contains my personal dotfiles optimized for GitHub Codespaces and VS Code Web environments.

## Features

- 🔥 Zsh configuration with Oh My Zsh and Powerlevel10k theme
- 🚀 Productivity-enhancing aliases and functions
- ⚡ Development tool configurations (Git, AWS, Terraform, etc.)
- 🛠️ VS Code settings and recommended extensions
- 📦 One-command installation

## Installation

```bash
git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install.sh
```

## Components

### Shell Configuration
- Zsh with Oh My Zsh
- Powerlevel10k theme for a powerful prompt
- Auto-suggestions and syntax highlighting
- Custom aliases and functions

### Development Tools
- Git configuration and aliases
- AWS CLI helpers and completions
- Terraform workspace management
- Docker and Kubernetes support

### VS Code Configuration
- Optimized editor settings
- Recommended extensions
- Language-specific configurations

## Structure

```
.
├── install.sh           # Installation script
├── zsh/
│   ├── .zshrc          # Main Zsh configuration
│   ├── aliases.zsh     # General aliases
│   ├── aws.zsh         # AWS CLI configuration
│   ├── git.zsh         # Git configuration
│   └── terraform.zsh   # Terraform configuration
└── vscode/
    ├── settings.json   # VS Code settings
    └── extensions.json # Recommended extensions
```

## Customization

Feel free to fork this repository and modify any configurations to match your preferences. The modular structure makes it easy to add or remove features.
