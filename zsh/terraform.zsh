# zsh/terraform.zsh
# Enable terraform auto-completion
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform

# Terraform workspace helper
tfw() {
  terraform workspace select $1
}