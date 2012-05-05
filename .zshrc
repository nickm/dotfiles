# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gallois"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/sbin:/usr/local/mysql/bin:/Applications/ejabberd-2.0.1/bin:/usr/local/lib/erlang/lib/rabbitmq-server-2.1.0/scripts:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/Users/nick/.rvm/bin:/Users/nick/.ec2/bin:/Users/nick/.ec2/bin:/Users/nick/android-sdk-macosx/tools
# rvm-install added line:
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
if [[ -s $HOME/.profile ]] ; then source $HOME/.profile ; fi

export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY=pk-7MXGZO4VWHXBSEEICINZB2UYOLW7N2DS.pem
export EC2_CERT=cert-7MXGZO4VWHXBSEEICINZB2UYOLW7N2DS.pem
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/
export PATH=/usr/local/sbin:/usr/local/mysql/bin:/Applications/ejabberd-2.0.1/bin:/usr/local/lib/erlang/lib/rabbitmq-server-2.1.0/scripts:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
alias grep='GREP_COLOR="1;37;41" LANG=C grep --color=auto'
alias irb='irb -rubygems'
alias restart_rails='touch tmp/restart.txt'
alias vhosts='sudo vi /private/etc/apache2/extra/httpd-vhosts.conf'
alias hosts='sudo vi /etc/hosts'
alias apache_restart='sudo apachectl restart'
alias mysql_start='sudo /usr/local/mysql/bin/mysqld_safe &'
alias blocks='cd ~/sct/blocks'
function sshdel { perl -i -n -e "print unless (\$. == $1)" ~/.ssh/known_hosts; }
export EDITOR=mvim
alias gw="ssh gw"
alias mate="mvim"
alias vi="vim"
alias gitx="gittower"
alias gll="git log --graph --pretty=\"format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset\""
#alias euca='. ~/.euca/eucarc'
alias ec2blocks='. ~/.ec2rcblocks'
alias ec2nick='. ~/.ec2rc'

ec2nick

#export EC2_HOME=~/.ec2
#export PATH=$PATH:$EC2_HOME/bin
#export EC2_PRIVATE_KEY=$EC2_HOME/pk-N4JMAZVPBQNT5VPHQ2JIZQ4UXTAGQSE4.pem
#export EC2_CERT=$EC2_HOME/cert-N4JMAZVPBQNT5VPHQ2JIZQ4UXTAGQSE4.pem

#export EC2_PRIVATE_KEY=$EC2_HOME/pk-FBD2FL2DSHFEL4QUKFBKTAOJJN52QQ2Y.pem
#export EC2_CERT=$EC2_HOME/cert-FBD2FL2DSHFEL4QUKFBKTAOJJN52QQ2Y.pem

#Java home for debian default install path:
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/
#add ec2 tools to default path
#export PATH=~/.ec2/bin:$PATH
#export EC2_URL=https://ec2.us-west-1.amazonaws.com


#gpg-agent --daemon --enable-ssh-support --write-env-file "${HOME}/.gpg-agent-info"

#if [ -f "${HOME}/.gpg-agent-info" ]; then
#  . "${HOME}/.gpg-agent-info"
#  export GPG_AGENT_INFO
#  export SSH_AUTH_SOCK
#  export SSH_AGENT_PID
#fi
#eval $(gpg-agent --daemon)

#GPG_TTY=$(tty)
#export GPG_TTY
#
#
