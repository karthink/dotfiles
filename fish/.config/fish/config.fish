set fish_greeting
if test -x (command -v fzf) && test -e "$HOME/.config/fzf/key-bindings.fish" 
   source "$HOME/.config/fzf/key-bindings.fish"
   fzf_key_bindings
end

# Source aliases and abbreviations
source "$HOME/.config/fish/fish_aliases"
source "$HOME/.config/fish/fish_shortcuts"

# The following are modified in fzf/keybindings.fish
set --erase FZF_CTRL_T_COMMAND
set --erase FZF_ALT_C_COMMAND
set --erase FZF_CTRL_T_OPTS
set --erase FZF_ALT_C_OPTS
set -x FZF_CTRL_R_OPTS "--preview='echo {} | fold' --preview-window=up:3"
# set -g FZF_CTRL_T_COMMAND="command fd --type f --type d --type l -L -i --hidden -E .git \$dir"

function fzf-cdhist-widget -d 'cd to one of the previously visited locations'
	# Clear non-existent folders from cdhist.
	set -l buf
	for i in (seq 1 (count $dirprev))
		set -l dir $dirprev[$i]
		if test -d $dir
			set buf $buf $dir
		end
	end
	set dirprev $buf
	string join \n $dirprev | tac | sed 1d | eval (__fzfcmd) +m --tiebreak=index --toggle-sort=ctrl-r $FZF_CDHIST_OPTS | read -l result
	[ "$result" ]; and cd $result
	commandline -f repaint
end

function fzf-cd-home-widget -d "Change directory starting from home"
    set -lx FZF_ALT_C_COMMAND "
    command fd . --type d --hidden -L -i -E .git $HOME 2>/dev/null"
    fzf-cd-widget 
end

function bind_bang
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function bind_dollar
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end
# enables $?
function bind_status
  commandline -i (echo '$status')
end


# enables $$
function bind_self
  commandline -i (echo '%self')
end

# enable keybindings
function fish_user_key_bindings
  bind '$?' bind_status
  bind '$$' bind_self
  bind ! bind_bang
  bind '$' bind_dollar
  bind \eC fzf-cd-home-widget
end
