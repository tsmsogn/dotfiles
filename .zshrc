# 環境変数
export LANG=ja_JP.UTF-8

# 補完機能を有効にする
autoload -U compinit
compinit

# ディレクトリ名だけでcd
setopt auto_cd
# cdの履歴を記憶
setopt auto_pushd
# 重複したディレクトリを追加しない
setopt pushd_ignore_dups

# もしかして機能
setopt correct

# zmv を有効にする
autoload -U zmv
# *は括弧が付いているものとみなす
alias zmv='noglob zmv -W'

# ヒストリー
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# リダイレクトによる上書きを禁止する
# 強制的に上書きする場合は、>! >>! もしくは、>| >|| を使う
setopt noclobber

# プロンプト
case ${UID} in
0)
    PROMPT="%B%{[31m%}%/#%{[m%}%b "
    PROMPT2="%B%{[31m%}%_#%{[m%}%b "
    SPROMPT="%B%{[31m%}%r is correct? [n,y,a,e]:%{[m%}%b "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
    ;;
*)
    PROMPT="%{[31m%}%/%%%{[m%} "
    PROMPT2="%{[31m%}%_%%%{[m%} "
    SPROMPT="%{[31m%}%r is correct? [n,y,a,e]:%{[m%} "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
    ;;
esac

# ターミナルのタイトルに「ユーザ@ホスト:カレントディレクトリ」を表示
case "${TERM}" in
kterm*|xterm*)
    precmd() {
        echo -ne "\033]0;${USER}@${HOST%%.*}:${PWD}\007"
    }
    ;;
esac
