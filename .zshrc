# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
   zsh-syntax-highlighting
   zsh-autosuggestions
   git
)

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


# ----------------------------- ALIASES -------------------------------------
alias icat='kitty +kitten icat'
alias pserver='sudo python3 -m http.server'
alias uzshrep='cp ~/.zshrc ~/.p10k.zsh ~/Desktop/my-zsh-config/'
alias dirkill='rm -rfd'

# ----------------------------- SYNTAX HIGHLIGHTER CONFIG ---------------------------------- 

# Defining the zsh highlighting styles variable
typeset -A ZSH_HIGHLIGHT_STYLES

# To style the unknown or error tokens
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#985a85'

# To style the aliases
ZSH_HIGHLIGHT_STYLES[alias]='fg=#a867e4,bold'
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#a867e4,bold'

# To style the commands
ZSH_HIGHLIGHT_STYLES[command]='fg=#a867e4,bold'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#a867e4,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=#a867e4,bold'

# To style the pre commands (sudo, exec)
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#ff6ef3'

# To style the goobbing style ('*.txt, *.md')
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#a9568d'

# To style the path arguments
ZSH_HIGHLIGHT_STYLES[path]='fg=#e8b8fc'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=#e8b8fc'

# To style the quoted arguments
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#d695b8'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#d695b8'

# To style the hyphen arguments
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#d695d1'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#d695d1'

# To style the builtin commands
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#d695d1'

# To style the less and greater than symbols
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#c72366'


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
