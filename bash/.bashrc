# ln -s ~/myconfig/config/bash/.bashrc ~/.bashrc

alias rc='sudo nixos-rebuild switch --flake ~/myconfig/config#nixos'
alias sl='ls'
alias xcp='xclip -selection clipboard'
alias la='exa -lha --git'
alias ec='emacsclient'

# jumper
alias cf='cd ~/myconfig/config/'

# shortcuts

## screen shots
alias sshotf='sh ~/myconfig/config/tools/screen-captures/capture.sh full'
alias sshotr='sh ~/myconfig/config/tools/screen-captures/capture.sh region'
alias sshotfc='sh ~/myconfig/config/tools/screen-captures/capture.sh full clipboard'
alias sshotrc='sh ~/myconfig/config/tools/screen-captures/capture.sh region clipboard'

## git
alias gd='git diff'
alias ga='git add'
alias gs='git status'
alias gc='git commit -m'
alias greset='git checkout -- '
alias gp='git push origin'

## chrome
alias chrome='google-chrome-stable'
alias browse='google-chrome-stable'

### utils
alias search='sh ~/myconfig/config/tools/google-just-to-find-me.sh'

### bookmarks
alias google='google-chrome-stable https://www.google.com &'
alias gmail='google-chrome-stable https://mail.google.com &'
alias gpt='google-chrome-stable https://chat.openai.com &'
alias amazon='google-chrome-stable http://www.amazon.co.jp &'
alias hatena='google-chrome-stable http://www.hatena.ne.jp &'
alias youtube='google-chrome-stable http://www.youtube.com &'
alias twitter='google-chrome-stable https://twitter.com &'
alias togetter='google-chrome-stable http://togetter.com &'
alias yahoo='google-chrome-stable http://www.yahoo.co.jp &'
alias wiki='google-chrome-stable http://ja.wikipedia.org &'
alias drawio='google-chrome-stable https://www.draw.io &'
alias github='google-chrome-stable https://github.com &'
alias mozilla='google-chrome-stable https://developer.mozilla.org/ja &'
alias codic='google-chrome-stable https://codic.jp/engine &'
alias weblio='google-chrome-stable http://ejje.weblio.jp &'

### documents
#### alias doc='google-chrome-stable &'

#### web
alias docsvelte='google-chrome-stable https://svelte.jp/docs/introduction &'
alias docnext='google-chrome-stable https://nextjs.org/docs &'

#### docs
alias docarch='google-chrome-stable https://wiki.archlinux.jp/ &'
alias docnix='google-chrome-stable https://nixos.wiki/wiki/Main_Page &'
alias docgit='google-chrome-stable https://git-scm.com/docs &'
alias docbash='google-chrome-stable https://www.gnu.org/software/bash/manual/bash.html &'
alias docdeb='google-chrome-stable https://www.debian.org/doc/manuals/debian-handbook/index.ja.html &'
alias dochypr='google-chrome-stable https://wiki.hyprland.org/ &'

alias doc='google-chrome-stable &'
alias doc='google-chrome-stable &'
alias doc='google-chrome-stable &'
alias doc='google-chrome-stable &'
alias doc='google-chrome-stable &'
alias doc='google-chrome-stable &'
alias doc='google-chrome-stable &'
alias doc='google-chrome-stable &'
alias doc='google-chrome-stable &'
alias doc='google-chrome-stable &'
alias doc='google-chrome-stable &'
alias doc='google-chrome-stable &'
alias doc='google-chrome-stable &'
alias doc='google-chrome-stable &'

## ailias
alias codexd='codex --dangerously-bypass-approvals-and-sandbox'
alias clauded='claude --dangerously-skip-permissions'
alias copa='copilot --allow-all'

#####################
# Environment & shell integrations
#####################

## default editor (emacs server 経由、無ければ emacs にフォールバック)
export EDITOR='emacsclient -a emacs'
export VISUAL="$EDITOR"

## PATH: 実在するユーザ/ツール bin のみを前置（重複追加も防止）
for _dir in "$HOME/.local/bin" "$HOME/.cargo/bin" "$HOME/.bun/bin" "$HOME/.asdf/shims"; do
  if [ -d "$_dir" ] && [[ ":$PATH:" != *":$_dir:"* ]]; then
    PATH="$_dir:$PATH"
  fi
done
unset _dir
export PATH

## fzf: キーバインド (C-r 履歴 / C-t ファイル / M-c cd) と補完
if command -v fzf >/dev/null 2>&1; then
  eval "$(fzf --bash)"
  export FZF_COMPLETION_TRIGGER=','   # `,` + Tab で fzf 補完（既定の ** を置換。bash標準補完は温存）
fi

## autojump: `j <部分パス>` で頻度順ジャンプ
if [ -f /run/current-system/sw/share/autojump/autojump.bash ]; then
  source /run/current-system/sw/share/autojump/autojump.bash
fi

## peco: fzf と競合しない補助関数として提供（C-r は fzf 側）
if command -v peco >/dev/null 2>&1; then
  # phist: 過去のコマンドを peco で選んで実行
  phist() {
    local cmd
    cmd=$(history | sed 's/^[ ]*[0-9]\+[ ]*//' | tac | awk '!seen[$0]++' | peco) || return
    [ -n "$cmd" ] && eval "$cmd"
  }
  # pcd: 配下のディレクトリを peco で選んで移動
  pcd() {
    local dir
    dir=$(find "${1:-.}" -type d 2>/dev/null | peco) && cd "$dir" || return
  }
fi

## tasks
alias altre='cd ~/workspace/altre/app && cargo run'
