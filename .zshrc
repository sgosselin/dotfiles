# Path to your oh-my-zsh installation.
export ZSH=/$HOME/.oh-my-zsh

#################################################
# functions
#################################################

function source_if_exists() {
	[[ -f "$1" ]] && source "$1"
}

#################################################
# oh-my-zsh configuration
#################################################

# Set name of the theme to load.
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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(colored-man-pages git)

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Initialize oh-my-zsh.
source $ZSH/oh-my-zsh.sh


#################################################
# user configuration
#################################################

# Add standard binaries folders to PATH.
export PATH="${PATH}:/usr/bin:/bin:/usr/sbin:/sbin"

# Add shpotify to PATH.
export PATH="${PATH}:/usr/local/opt/shpotify/bin/"

# Add the dotfiles scripts folder to PATH.
export PATH="${PATH}:$(dirname $(readlink ~/.zshrc))/scripts"

# Add the android platform-tools to PATH.
export PATH="${PATH}:/Users/sgosselin/Workspace/Tools/android/platform-tools"

# Add folders to MANPATH.
export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Set-up aliases.
source_if_exists "${HOME}/.aliases"
source_if_exists "${HOME}/.aliases.work"

# Set-up ROS.
source_if_exists "/opt/ros/melodic/setup.zsh"

# Set-up rust.
source_if_exists "${HOME}/.cargo/env"


#################################################
# wls specific user configuration
#################################################
if grep -qE "(Microsoft|WSL)" /proc/version &> /dev/null;
then
	LS_COLORS='ow=01;36;40'
fi
