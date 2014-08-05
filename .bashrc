# PS1="\[\033[1;30m\w\]\n\`if [ \$? = 0 ]; then echo \[\e[36m\]^^\[\e[0m\]; else echo \[\e[31m\]\>\<\[\e[0m\]; fi\` "
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'
alias sleep="osascript -e 'tell application \"System Events\" to sleep'"
alias ls='ls -G -F'
alias eject='diskutil eject'
alias f='find . -name'

alias safari='open -a /Applications/Safari.app'
alias firefox='open -a /Applications/FirefoxNightly.app'
alias chrome='open -a /Applications/Google\ Chrome\ Canary.app'
alias mplayer='open -a /Applications/MPlayerX.app'
alias github='open -a /Applications/GitHub.app'
alias reminders='open -a /Applications/Reminders.app'
alias notes='open -a /Applications/Notes.app'
alias contacts='open -a /Applications/Contacts.app'
alias calendar='open -a /Applications/Calendar.app'
alias itunes='open -a /Applications/iTunes.app'
alias messages='open -a /Applications/Messages.app'
alias word='open -a /Applications/Microsoft\ Office\ 2011/Microsoft\ Word.app'
alias powerpoint='open -a /Applications/Microsoft\ Office\ 2011/Microsoft\ Powerpoint.app'
alias excel='open -a /Applications/Microsoft\ Office\ 2011/Microsoft\ Excel.app'
alias vlc='open -a /Applications/VLC.app'
alias s='subl'
alias v='vi'

# git aliases
alias g='git'
alias shove='git shove'
alias amend='git commit --amend'
alias gm='git commit -m'
alias pr='git pull-request'
alias gb='git branch'
alias stash='git stash'
alias gs='git status'
alias checkout='git checkout'
alias start='git start'
alias master='git checkout master'
alias continue='git rebase --continue'
alias unamend='git reset --soft HEAD@{1}'

alias \.\.="cd ../"
alias \.\.\.="cd ../../"
alias \.\.\.\.="cd ../../../"

export AWS_ACCESS_KEY=''
export AWS_SECRET_KEY=''

# git autocomplete
if [ -f ~/.git-completion.bash ]; then
      . ~/.git-completion.bash
fi

# powerline shell
function _update_ps1() {
   export PS1="$(~/.powerline-shell.py --mode compatible $? 2> /dev/null)"
}

export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
