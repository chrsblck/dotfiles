# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME=""

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(aws brew colored-man-pages docker git mvn redis-cli terraform)

# User configuration

export PATH="/usr/local/bin:/Users/cblack/.gvm/vertx/current/bin:/Users/cblack/.gvm/springboot/current/bin:/Users/cblack/.gvm/lazybones/current/bin:/Users/cblack/.gvm/jbake/current/bin:/Users/cblack/.gvm/groovyserv/current/bin:/Users/cblack/.gvm/groovy/current/bin:/Users/cblack/.gvm/griffon/current/bin:/Users/cblack/.gvm/grails/current/bin:/Users/cblack/.gvm/gradle/current/bin:/Users/cblack/.gvm/glide/current/bin:/Users/cblack/.gvm/gaiden/current/bin:/Users/cblack/.gvm/crash/current/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/snap/bin"

source $ZSH/oh-my-zsh.sh

# https://github.com/sindresorhus/pure
# autoload -U promptinit; promptinit
# prompt pure

# Colors
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# NeoVim
alias vi=nvim

# Tmuxinator
export EDITOR='nvim'

# Java
export JAVA_HOME=$(/usr/libexec/java_home)

# Coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Postgres
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"

# Other stuff
alias la="exa"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

cdpath=(~ ~/GitHub ~/code)

# Reload functions
freload() { while (( $# )); do; unfunction $1; autoload -U $1; shift; done }

# Autoloaded functions
fpath=($fpath ~/.zfunc)
for func in $^fpath/*(N-.x:t); autoload $func

# Remove duplicates
typeset -U path cdpath fpath manpath

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

eval "$(starship init zsh)"
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"
