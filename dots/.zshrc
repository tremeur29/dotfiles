# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="${PATH}:${HOME}/.local/bin/"
(cat ~/.cache/wal/sequences &)

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# export GOPATH=$HOME/Appsetc/go

gitwho(){if git rev-parse --git-dir > /dev/null 2>&1; then
  git config user.name;
else
fi;
}

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
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

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras zsh-syntax-highlighting common-aliases)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set location of aliases
. ~/.oh-my-zsh/custom/aliases

# wal script
pywal() {
	wal --vte -li "$1"
	~/.linux/scripts/colorus/convert.sh
}
