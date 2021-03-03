alias   ka="killall" \
	ls="ls -hN --color=auto --group-directories-first" \
	ll="ls -hN --color=auto --group-directories-first -l"\
	mkdir="mkdir -pv" \
	mpv="mpv --input-ipc-server=/tmp/mpvsoc$(date +%s)" \
	p="sudo pacman" \
	SS="sudo systemctl" \
	F="$FILE" \
	g="git" \
	e="$EDITOR" \
	ec="emacsclient -c" \
	x="xclip -selection clipboard" \
        f="fzf-tmux -m" \
	gua="git remote | xargs -L1 git push --all" \
	grep="grep --color=auto" \
	egrep="egrep --colour=auto" \
	fgrep="fgrep --colour=auto" \
        scu="systemctl --user" \
        ssc="sudo systemctl" \
        jcu="journalctl --user"
        sjc="sudo journalctl"
	cp="cp -i" \
	df='df -h' \
	free='free -m' \
	np='nano -w PKGBUILD' \
	more=less \
	diff="diff --color=auto" \
	ccat="highlight --out-format=ansi" \
	ref="shortcuts >/dev/null; source ~/.config/shortcutrc" \
	ffmpeg="ffmpeg -hide_banner" \
	dff="dmenufindfile"

alias yta="youtube-dl -w -c -r 1M -o '%(playlist_index)s-%(title)s.%(ext)s' --add-metadata  -f 'bestaudio[ext=m4a]'" \
alias yt="youtube-dl -w -c -o '%(title)s.%(ext)s' -f 'bestvideo[height<=?1080]+bestaudio/best' --add-metadata"

command -v nvim >/dev/null && alias vim="nvim" vimdiff="nvim -d" # Use neovim for vim if present.

# calcurse="calcurse -D ~/.config/calcurse" \
# magit="nvim -c MagitOnly" \
# trem="transmission-remote" \
# sdn="sudo shutdown -h now" \
# yt="youtube-dl --add-metadata -i -o '%(upload_date)s-%(title)s.%(ext)s'" \
# yta="yt -x -f bestaudio/best" \
# YT="youtube-viewer" \
# upc="sudo pacman -Syu; pkill -RTMIN+8 i3blocks" \
# lsp="pacman -Qett --color=always | less" \
