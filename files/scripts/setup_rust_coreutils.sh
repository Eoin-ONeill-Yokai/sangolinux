cargo install zoxide --root /usr/local --locked
echo "#/bin/bash
eval \"\$(zoxide init bash)\" 
alias cd=z
alias find=fd
alias vim=helix
alias grep=rg" >> /usr/local/bin/rust_alias.sh
chmod +x /usr/local/bin/rust_alias.sh
echo "source /usr/local/bin/rust_alias.sh" >> /etc/bashrc