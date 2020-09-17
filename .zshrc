# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt nomatch
unsetopt autocd beep extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jackchealdang/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Bare git repo alias
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

# SSH to pi
alias pi='/usr/bin/ssh pi@192.168.1.211'
# SSH to pi with X capabilities
alias pix='/usr/bin/ssh -X pi@192.168.1.211'
# Connect to VNC to PI
alias pi_vnc='/usr/bin/vncviewer 192.168.1.211:1'

# Connect to UTA VPN
alias utavpn='sudo /usr/bin/openconnect vpn.uta.edu'
# SSH to UTA Omega Servers
alias utassh='/usr/bin/ssh jxd1197@omega.uta.edu'

# Update list of all explicitly installed packages including AUR and dependencies
alias backup_all='/usr/bin/pacman -Qqe > installed_packages_all.txt'
# Update list of explicitly installed packages excluding foreign packages
alias backup_explicit='/usr/bin/pacman -Qqent > installed_packages_explicit.txt'
# Update list of explicitly installed foreign packages
alias backup_foreign='/usr/bin/pacman -Qqem > installed_packages_foreign.txt'

# Update top 5 mirrors
alias update_mirrors='sudo reflector --verbose --latest 5 --sort rate --save /etc/pacman.d/mirrorlist'

export PATH="$HOME/.local/bin:$PATH"
