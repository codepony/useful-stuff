# Path to your oh-my-zsh configuration. - https://github.com/robbyrussell/oh-my-zsh
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias startx="startx && vlock || vlock"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git debian perl python screen)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/bin/X11:/usr/games
# https://github.com/seebi/dircolors-solarized/blob/master/dircolors.256dark
eval `dircolors ~/.dircolorsrc`

echo "\033[1;36m`cowsay -f sodomized-sheep "Why don't you just f*ck sheep?"`\033[m"
echo "\n\n\033[1;32m`fortune`\033[m\n\n"
echo "\033[1;31mOperating System Information:\033[m"
echo "\033[1;33m`lsb_release -i -d -c`\033[m\n"
echo "\033[1;31mKernel Version:\033[m"
echo "\033[1;33m`uname -sro`\033[m\n"
echo "\033[1;31mShell Version:\033[m"
echo "\033[1;33m`zsh --version`\033[m\n"
echo "\033[1;31mGCC Version:\033[m"
echo "\033[1;33m`gcc --version | head -1`\033[m\n"
echo "\033[1;31mCommonLisp Version:\033[m"
echo "\033[1;33m`sbcl --version`\033[m\n"
echo "\033[1;31mGHC Version:\033[m"
echo "\033[1;33m`ghc --version`\033[m\n"
echo "\033[1;31mCurrent Entropy:\033[m"
echo "\033[1;33m`cat /proc/sys/kernel/random/entropy_avail` of `cat /proc/sys/kernel/random/poolsize`\033[m\n"
echo "\033[1;31mCurrent Temperatures:\033[m"
echo "\033[1;33m`sensors | grep -Po "(^.*\o*\ +\+\d+\.\d°C)\ "`\033[m\n"
echo "\033[1;31mCurrent IP:\033[m"
echo "\033[1;33m`curl --silent icanhazip.com`\033[m\n"


echo "\033[1;31mYour latest typed in commands:\033[m"
tail -10 $HOME/.zsh_history
echo "\033[1;31m\nNow have fun using it, $USER!\033[m"
echo "\033[1;33mYour Privilege score is: <CHECK IT BEFORE USING> - You are PRIVILEGED!\033[m"
