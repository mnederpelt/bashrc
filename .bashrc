export PIP_REQUIRE_VIRTUALENV=true

function git-branch-name {
 git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3
}
function git-branch-prompt {
 local branch=`git-branch-name`
 if [ $branch ]; then printf " [%s]" $branch; fi
}
function git-branch-switch-and-pull {
    git checkout -b $1
    git pull origin $1
}
alias cpr=git-branch-switch-and-pull
alias ferdipocalypse="rm -rf node_modules; npm install"

alias uncache="./manage.py flush_cache && ./manage.py flush_celerymemory"
PS1="\u@\h \[\033[0;36m\]\W\[\033[0m\]\[\033[0;32m\]\$(git-branch-prompt)\[\033[0m\] \$ "

alias releasenotes="git log --pretty=oneline --abbrev-commit origin/production..origin/master | grep -vi 'merge'"
alias project="cd $HOME/Projects/Projectx"
alias projecty="cd $HOME/Projects/otherProjectX"
alias otherprojectx="projecty"
alias projectz="cd $HOME/Projects/pullrequests/ProjectX"
alias mpr="./manage.py runserver"
alias mp="./manage.py "
alias mpm="./manage.py migrate"
alias pom="git pull origin master"
alias master="git pull origin master"
alias tobepushed="git log origin/master..master"
alias preflight="tobepushed"
alias payload="tobepushed"
alias rock="cd $HOME/Projects/Projectx && source python3venv/bin/activate && ./manage.py runserver"
alias va="source python3venv/bin/activate"
alias va2="source venv/bin/activatie"
alias h="sudo vim /etc/hosts"

alias flushdnscache="sudo killall -HUP mDNSResponder"
alias st="git status"
alias g="git"
alias s="git status"
alias gp="git pull"
alias gf="git fetch"
alias gs="git status"
alias gd="git diff"
alias unstageall="git status --porcelain | grep '^M' | awk '{print $2}' | git reset HEAD"
alias conflict="grep '^<<<' * -rI"
alias idgweb01="ssh mnederpelt@idgweb01"
alias idgweb02="ssh mnederpelt@idgweb02"
alias idgweb03="ssh mnederpelt@idgweb03"
alias idgweb04="ssh mnederpelt@idgweb04"
alias idgweb05="ssh mnederpelt@idgweb05"
alias headers="wget -S $1 -O /dev/null --no-check-certificate"

if [ -f ~/.git-completion.bash ]; then
    .  ~/.git-completion.bash
fi

function gitouttahere {
    git branch | awk '{print $1}' | grep '^$1' | xargs git branch -D
}

function codereview {
    git diff | vim -R - -c 'set invlist'
}

alias killchrome='ps aux | grep -i "/Applications/Google Chrome.app" | awk "{print $2}" | xargs sudo kill -9'

alias z='ls -al'
alias zz='ls -Slahr'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../.."
alias .........="cd ../../../../../../../.."
alias ..........="cd ../../../../../../../.."

alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
alias ..6="cd ../../../../../.."
alias ..7="cd ../../../../../../.."
alias ..8="cd ../../../../../../../.."
alias ..9="cd ../../../../../../../../.."

alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."
alias .6="cd ../../../../../.."
alias .7="cd ../../../../../../.."
alias .8="cd ../../../../../../../.."
alias .9="cd ../../../../../../../../.."
