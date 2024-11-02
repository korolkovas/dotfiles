# zsh/aws.zsh
# AWS CLI auto-completion
autoload bashcompinit && bashcompinit
complete -C '/usr/local/bin/aws_completer' aws

# AWS Profile helper
aws-profile() {
  export AWS_PROFILE=$1
  aws sts get-caller-identity
}