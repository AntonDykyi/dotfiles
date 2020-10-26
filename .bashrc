# UNIVERSAL .bashrc CONFIG FOR MACHINE # 

#  Setup promtp, path and add colour to MacOS terminal 
#   ---------------------------------------------------------
if [[ "$(uname)" == "Darwin" ]]; then
    # Change Prompt
    export PS1="\[\033[38;5;10m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \\$ \[$(tput sgr0)\]"
    # Set Path
    export PATH=/usr/local/bin:/bin/:$PATH
    # Add color to terminal
    export CLICOLOR=1
    export LSCOLORS=ExFxBxDxCxegedabagacad
    #   Add special characters
    export LANG=en_US.UTF-8
    export LC_ALL=en_US.UTF-8
fi

#   Source the bash_aliases file
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

#   The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/antond/google-cloud-sdk/path.bash.inc' ]; then . '/Users/antond/google-cloud-sdk/path.bash.inc'; fi

#   The next line enables shell command completion for gcloud.
if [ -f '/Users/antond/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/antond/google-cloud-sdk/completion.bash.inc'; fi

#   The next line enables broot in bash
source /Users/antond/.config/broot/launcher/bash/br
