export PATH=~/Downloads/adt-bundle-mac-x86_64-20131030/sdk/platform-tools/:~/bin/:$PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
function mountAndroid { hdiutil attach ~/android.dmg.sparseimage -mountpoint /Volumes/android; }
export BUILD_MAC_SDK_EXPERIMENTAL=1
export WITH_GMS=true
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home/
export PATH="/usr/local/opt/gnu-sed/bin:/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export ANDROID_JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home/

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/bin:$PATH

# Android aliases
alias lc='adb logcat -C'
alias gilog='adb logcat -C | grep -i $0'
alias glog='adb logcat -C | grep $0'

# Git aliases
alias gs='git status'
alias gc='git commit'
alias ga='git add -u'
alias gd='git diff'
alias gl='git log'

# Grep aliases
alias gri='grep -ri $0'
alias gr='grep -r $0'

# Find aliases
alias f='find . -name $0'

export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=$(which python)
export VIRTUALENVWRAPPER_VIRTUALENV=$(which virtualenv)
source /usr/local/bin/virtualenvwrapper.sh

function git() {
    if [ "$1" = push ] && [[ "$3" = *"refs/heads"* ]] ; then
        echo "ARE YOU SURE YOU WANT TO PUSH TO REFS/HEADS?"
        echo -n "Think hard and type uppercase YES to skip Gerrit: "
        read answer
        if [ YES = "$answer" ]; then
          command git "$@"
        else
          echo "Aborting command, push not executed."
        fi
    else
        command git "$@"
    fi
}
