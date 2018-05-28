# Path to your oh-my-zsh installation.
export ZSH=/$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="voxelgrid"

# Case-sensitive completion.
CASE_SENSITIVE="false"

# Bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="false"

# How often to auto-update (in days).
export UPDATE_ZSH_DAYS=30

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="false"

# Disable untracked files in git as dirty.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Change the command execution time
# stamp shown in the history command output.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin"
export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vim'
else
	export EDITOR='vim'
fi

# Set personal aliases.
source ~/.aliases

# Virtualenv/VirtualenvWrapper
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3

if [[ -f /usr/local/bin/virtualenvwrapper.sh ]]; then
	source /usr/local/bin/virtualenvwrapper.sh
fi
