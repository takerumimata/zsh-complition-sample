# 補完を有効にする
autoload -U compinit
compinit -u

# コマンド（関数）の作成
function work {
    cd ~/works/$1;
}

# 補完を行う補助関数
function _work {
    _files -W ~/works/ && return 0;
    return 1;
}

# 補完関数との対応づけ
compdef _work work