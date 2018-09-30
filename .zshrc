# Path to your oh-my-zsh installation.
export ZSH=/$HOME/.oh-my-zsh

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

# Add the dotfiles scripts folder to PATH.
export PATH="${PATH}:$(dirname $(readlink ~/.zshrc))/scripts"

# Add folders to MANPATH.
export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Set-up aliases.
source ~/.aliases
if [[ -f "${HOME}/.aliases.work" ]];
then
	source "${HOME}/.aliases.work"
fi

# Set-up ROS.
if [[ -f /opt/ros/melodic/setup.zsh ]];
then
	source /opt/ros/melodic/setup.zsh
fi
