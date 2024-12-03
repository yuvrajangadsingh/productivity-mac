# Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

alias python3='/opt/homebrew/bin/python3.12'
alias pip3='/opt/homebrew/bin/pip3.12'

export PATH=~/.composer/vendor/bin:$PATH
export PATH="$HOME/usr/local/bin/npm/bin:$PATH"
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/Users/yuvrajangadsingh/Downloads/google-cloud-sdk/bin

export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export ANDROID_SDK_ROOT=/Users/$USER/Library/Android/sdk

export JAVA_HOME=$(/usr/libexec/java_home -v 11)

#Git Branch in Terminal
    parse_git_branch() {
        git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
    }
    COLOR_DEF='%f'
    COLOR_USR='%F{243}'
    #COLOR_DIR='%F{197}'
    COLOR_DIR='%F{250}'
    COLOR_GIT='%F{39}'
    NEWLINE=$'\n'
    setopt PROMPT_SUBST
    #export PROMPT='${COLOR_USR}%n@%M ${COLOR_DIR}%d ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF}${NEWLINE}%% '
    export PROMPT='${COLOR_USR}%n ${COLOR_DIR}%(5~|%-1~/…/%2~|%4~) ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} %% '

#Aliases
# =================================================================

    # Java
    alias java='/usr/bin/java -version 11'

    # Git
    alias gpom="git pull origin master"
    alias gpomn="git pull origin main"
    alias gco="git checkout"
    alias gpo='git push -u origin `git rev-parse --abbrev-ref HEAD`'
    alias ga="sh ~/scripts/git_push.sh"
    alias nnrd="nodemon --exec npm run dev"
    alias nl="nodemon --exec npm run start:local"
    alias nc="nodemon --exec npm run start:cron"
    alias nrt="npm run test"
    alias yyd="yarn && yarn dev"
    alias yb="yarn && yarn build"
    alias gp="sh ~/scripts/git_pull.sh"
    alias gmaster="sh ~/scripts/git_master.sh"
    alias gmain="sh ~/scripts/git_main.sh"
    # alias ga="git add -A && git commit -m"
    # alias ga="git commit -am"
    alias gs="git stash push -um"
    alias gsc="git stash clear"
    alias gc="git clone"
    alias gcj="sh ~/scripts/git_clone_jio.sh"
    alias gf="git fetch"
    alias gfp="sh ~/scripts/git_fetch_pull.sh"

    #Brew
    # alias b="arch -arm64 brew"

    #SpringBoot
    alias s="mvn spring-boot:run"
    alias sst="mvn spring-boot:run -DskipTests=true"
    alias mcp="mvn clean package"
    alias mt="mvn test"
    # alias fc="prettier --write '**/*.java'"
    alias gl="mvn spring-boot:run &> event.log &"


    #Dont let Mac sleep
    alias coffee="caffeinate"

    #Glue Commands
    alias nu="node glue develop:up"
    alias nd="node glue develop:down"

    #Python3 Commands
    alias pi="pip3 install"
    alias pap="python3 app.py"

export PATH="/opt/homebrew/opt/node@18/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yuvrajangadsingh/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/yuvrajangadsingh/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/yuvrajangadsingh/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/yuvrajangadsingh/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="/usr/local/opt/openjdk@8/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="~/Applications/IntelliJ IDEA CE.app/Contents/MacOS:$PATH"

export PATH="/usr/local/opt/mongodb-community/bin:$PATH"

# bun completions
[ -s "/Users/yuvrajangadsingh/.bun/_bun" ] && source "/Users/yuvrajangadsingh/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Add Docker Desktop for Mac (docker)
export PATH="$PATH:/Applications/Docker.app/Contents/Resources/bin/"


[[ -f "$HOME/fig-export/dotfiles/dotfile.zsh" ]] && builtin source "$HOME/fig-export/dotfiles/dotfile.zsh"

# Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
