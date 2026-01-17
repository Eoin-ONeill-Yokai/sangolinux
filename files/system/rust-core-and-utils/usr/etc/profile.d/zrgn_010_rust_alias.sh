#/bin/bash

# Reassign cd Note: Maybe too gimmicky?
alias cd=z

# Set up fzf initial configuration to avoid wine-induced infinite recursion.
export FZF_DEFAULT_OPTS="
			--walker=file,follow
			--preview 'file {}' --preview-window up,1,border-horizontal
			--walker-skip drive_c/users,dosdevices"
export FZF_CTRL_T_OPTS="
			--walker=dir,file,follow
			--walker-skip drive_c/users,dosdevices"
export FZF_ALT_C_OPTS="
			--walker=dir,follow
			--preview 'tree -C {}'
			--walker-skip drive_c/users,dosdevices"

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

# Set up zoxide smart directory navigation
eval "$(zoxide init bash)"