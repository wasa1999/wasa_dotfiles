autoload -Uz compinit 

#保管候補を一覧表示にする
setopt auto_list

#TABで順に補完候補を切り替える
setopt auto_menu

#補完候補を一覧表示したときに、TABや矢印で選択できるようにする
zstyle ':completion:*:default' menu select=1

#補完候補の色付け
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

#cdコマンドをつけない
setopt auto_cd

#ヒストリフィアルの保存
export LANG=ja_JP.UTF-8
HISTFILE=$HOME/.zsh-history
HISTSIZE=1000000
SAVEHIST=1000000

#他のターミナルで実行したコマンドも記録
setopt share_history

#prompt
PROMPT='[%n@%m]#'
RPROMPT='[%d]'

#texの設定
PATH="/Library/TeX/texbin:$PATH"

export PATH
