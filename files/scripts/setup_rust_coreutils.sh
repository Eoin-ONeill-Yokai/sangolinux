set -oue pipefail #fail on error
set -x #echo on

echo "#/bin/bash
eval \"\$(zoxide init bash)\" 
alias cd=z
alias find=fd
alias vim=helix
alias grep=rg" >> /etc/profile.d/rust_alias.sh
chmod +x /etc/profile.d/rust_alias.sh