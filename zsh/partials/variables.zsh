
# ZSH Settings
# Disable default "Python venv" prompt to customize it later
VIRTUAL_ENV_DISABLE_PROMPT=true


export HSS_UP_ARROW='^[[A'
export HSS_DOWN_ARROW='^[[B'

export NVM_AUTO_INIT=false

# Prompt Customization
export NODE_SYMBOL='⬢'
export PROMPT_SYMBOL='異' # »
export PROMPT_COMPONENTS=(
    '$PYTHON_VENV_PROMPT'
    '%B%F{cyan}%~%f%b'
    '$(gitprompt)'
    '${NODE_PROMPT}'
    $'\n'
    '%(?.%F{green}.%F{red})$PROMPT_SYMBOL%f '
)


# Add .local to PATH
export PATH=$PATH:~/.local/bin


# Change variables based on OS Type
case "$OSTYPE" in

  # ~ macOS ~
  darwin*)
    # macOS iTerm 2 intergration
    test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
    # Init NVM on macOs
    NVM_AUTO_INIT=true
    # PATH to flutter bin
    export PATH="$PATH:/Users/simone/Documents/flutter/bin"
  ;;
  

  # ~ WSL (Linux on Windows 10) ~
  linux-gnu)
    # Init NVM on WSL
    NVM_AUTO_INIT=true
    # Arrows for history-substring-search (for WSL)
    HSS_UP_ARROW="$terminfo[kcuu1]"
    HSS_DOWN_ARROW="$terminfo[kcud1]"
  ;;
  
  
  # ~ FreeBSD (TrueNAS) ~
  freebsd*)
    # Default TrueNAS prompt
    PROMPT_COMPONENTS=(
      '$PYTHON_VENV_PROMPT'
      '%B%F{cyan}%~%f%b'
      '$(gitprompt)'
      '${NODE_PROMPT}'
      $'\n'
      '%B%F{blue}${(C)$(hostname -s)} ◆%f%b '
    )
  ;;


  # ~ Alpine Linux (iSH iOS) ~
  linux-musl*)
    PROMPT_COMPONENTS=(
      '$PYTHON_VENV_PROMPT'
      '%B%F{cyan}%~%f%b'
      '$(gitprompt)'
      '${NODE_PROMPT}'
      $'\n'
      $'%B%F{blue}iPad \UF8FF%f%b '
    )
  ;;


  # ~ Alpine Linux? (Termux Android) ~
  linux-android*)
   
  ;;
esac

# Youtube dl path
export PATH="$PATH:/home/sonny/.local/bin"

# WSL display export
export DISPLAY=localhost:0.0

# Apache Spark
export SPARK_LOCAL_IP=127.0.0.1
export SPARK_MASTER_HOST=127.0.0.1

# Flutter
export PATH="$PATH:`pwd`/flutter/bin"

# Nvim
export PATH="$PATH:/home/sonny/nvim-linux64/bin"

# Contiki-NG
export PATH="$PATH:/opt/compilers/mspgcc-4.7.3/msp430/bin:$PATH"