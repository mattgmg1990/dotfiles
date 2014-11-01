export PATH=~/Downloads/adt-bundle-mac-x86_64-20131030/sdk/platform-tools/:~/bin/:$PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
function mountAndroid { hdiutil attach ~/android.dmg.sparseimage -mountpoint /Volumes/android; }
export BUILD_MAC_SDK_EXPERIMENTAL=1
export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)
export PATH="/usr/local/opt/gnu-sed/bin:/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export ANDROID_JAVA_HOME=$(/usr/libexec/java_home -v 1.6)

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/bin:$PATH
