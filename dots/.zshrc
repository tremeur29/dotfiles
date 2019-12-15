# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="${PATH}:${HOME}/.local/bin/"
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
(cat ~/.cache/wal/sequences &)

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# export GOPATH=$HOME/Appsetc/go

POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir custom_prompt)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status custom_gitwho vcs battery)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''

. ~/.colourvars

POWERLEVEL9K_CUSTOM_PROMPT="echo $'\u2023'"
POWERLEVEL9K_CUSTOM_PROMPT_FOREGROUND="$LINE1"
POWERLEVEL9K_CUSTOM_PROMPT_BACKGROUND="clear"

POWERLEVEL9K_CUSTOM_GITWHO="gitwho"
POWERLEVEL9K_CUSTOM_GITWHO_FOREGROUND="$LINE2"
POWERLEVEL9K_CUSTOM_GITWHO_BACKGROUND="clear"

POWERLEVEL9K_OS_ICON_FOREGROUND="$LINE1"
POWERLEVEL9K_OS_ICON_BACKGROUND='clear'

# General Directory Settings
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="$LINE2"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='clear'

# Home Folder Settings
POWERLEVEL9K_DIR_HOME_FOREGROUND="$LINE2"
POWERLEVEL9K_DIR_HOME_BACKGROUND='clear'

# Home Subfolder Settings
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="$LINE2"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='clear'

# Etc Directory Settings
POWERLEVEL9K_DIR_ETC_FOREGROUND="$LINE2"
POWERLEVEL9K_DIR_ETC_BACKGROUND='clear'

# Status OK
POWERLEVEL9K_STATUS_OK_FOREGROUND="$LINE2"
POWERLEVEL9K_STATUS_OK_BACKGROUND='clear'

# Status Error (if P9K_STATUS_CROSS=true)
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='124'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='clear'

# Status Error (if P9K_STATUS_CROSS=false)
POWERLEVEL9K_STATUS_ERROR_CR_FOREGROUND='124'
POWERLEVEL9K_STATUS_ERROR_CR_BACKGROUND='clear'

# Battery Low
POWERLEVEL9K_BATTERY_LOW_FOREGROUND='124'
POWERLEVEL9K_BATTERY_LOW_BACKGROUND='clear'

# Battery Charging
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND="$LINE1"
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND='clear'

# Battery Charged
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND="$LINE1"
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='clear'

# Battery Disconnected
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND="$LINE3"
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND='clear'

# Checkout Clean
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="$LINE4"
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='clear'

# Checkout Contains Untracked Files
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="$LINE5"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='clear'

# Checkout Contains (Tracked) Modified Files
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="$LINE5"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='clear'

# Checkout Is Clobbered
POWERLEVEL9K_VCS_CLOBBERED_FOREGROUND="$LINE5"
POWERLEVEL9K_VCS_CLOBBERED_BACKGROUND='clear'

plugins=(git git-extras zsh-syntax-highlighting common-aliases)

source $ZSH/oh-my-zsh.sh

# Set location of aliases
. ~/.oh-my-zsh/custom/aliases
. ~/.oh-my-zsh/custom/aliases-specific
