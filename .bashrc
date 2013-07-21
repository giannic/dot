export PATH=$HOME/Developer/local/bin:$PATH

PS1="\[\033[1;30m\w\]\n\`if [ \$? = 0 ]; then echo \[\e[36m\]^^\[\e[0m\]; else echo \[\e[31m\]\>\<\[\e[0m\]; fi\` "
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'
alias sleep="osascript -e 'tell application \"System Events\" to sleep'"
alias ls='ls -G -F'
alias eject='diskutil eject'

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

alias coffee='/Users/gianni/upenn/spring2013/fnar399/profiles/node_modules/coffee-script/bin/coffee'
alias mongod='/Users/gianni/upenn/spring2013/fnar399/profiles/mongodb/bin/mongod'
alias mongo='/Users/gianni/upenn/spring2013/fnar399/profiles/mongodb/bin/mongo'

#Adobe Font Deveoplment Kit
FDK_EXE="/Users/i/bin/FDK/Tools/osx"
PATH=${PATH}:"/Users/i/bin/FDK/Tools/osx"
export PATH
export FDK_EXE

export EDITOR="/usr/bin/vim"
