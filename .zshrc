export LANG="ja_JP.UTF-8"
export EDITOR=vim
export SHELL=/bin/zsh

#エイリアス
alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"
alias vimdiff="nvim -d"

# -------------------------------------
# zsh設定
# -------------------------------------

# 音を消す
setopt no_beep
# 自動でpushd
setopt auto_pushd
# pushdで重複させない
setopt pushd_ignore_dups
# 一致するディレクトリにcdなしで移動できる
setopt auto_cd
# 直前と同じコマンドは履歴に追加しない(history)
setopt hist_ignore_dups
# 他のzshで履歴を共有
setopt share_history
# 即座に履歴を保存する(Enterを押した直後)
setopt inc_append_history
