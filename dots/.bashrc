#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '


#bash
#hide duplicates and lines starting with space in history
HISTCONTROL=ignoreboth
#format
HISTTIMEFORMAT="%d-%m-%Y %T "


#dotconfs
alias cealct='sudo vim /home/umaa/.config/alacritty/alacritty.yml'
alias cehypr='sudo vim /home/umaa/.config/hypr/hyprland.conf'
alias cekeys='sudo nano ~/.Xmodmap'
alias cempv='sudo vim /home/umaa/.config/mpv/mpv.conf'

#brave web apps
alias gpt='dex ~/GPT.desktop'
alias brer='dex ~/ResearchRabbit.desktop'
alias bcpdf='dex ~/Chatpdf.desktop'
alias bmt='dex ~/monkeytype.desktop'
alias bty='dex ~/typing.desktop'
alias bpy='dex ~/mimo_py.desktop'

#thunaralias
alias tss="nohup thunar shugal/shows/  >/dev/null 2>&1 & disown; exit"
alias tsm="nohup thunar shugal/Movies/  >/dev/null 2>&1 & disown; exit"
alias ts="nohup thunar shugal/  >/dev/null 2>&1 & disown; exit"

#server
alias srvr='/home/umaa/gitclone/http-file-server ~/shugal/'


#misc
alias whs='sudo create_ap wlo1 wlan0_ap MyAP 12345678.,'
alias wlap='sudo iw dev wlo1 interface add wlan0_ap  type managed addr 40:f0:2f:71:47:ab'
alias km='xmodmap ~/.Xmodmap'
alias moon='pyphoon | lolcat'
alias verse='curl -s https://decapi.me/twitter/latest?name=VerseQuran'
alias st='speedtest-cli --secure'
alias colors='.config/alacritty/themes/print_colors.sh'
alias at='alacritty-themes'
alias fk='fuck'
alias tte='tt -t 60 -oneshot -showwpm'
alias ww='curl wttr.in/Islamabad?2qF'



#pushbullet
alias pbp="pb push -d 0 " 
alias pbl="pb  list -c 1 " 
alias pbl2="pb  list -c 2 " 
alias pbll="pb  list -c 10 " 

#exa
alias ela="exa --long --all --header --icons"
alias ea="exa --all --header --icons --sort=modified"
alias eal="exa -all --header --icons --sort=modified --oneline"
alias et3="exa --all --tree --level=3"
alias et3l="exa --long --all --tree --level=3"


#AUR
alias yi='yay -S'
alias ys='yay -Ss'
alias yr='yay -Rns'
alias pi='sudo pacman -S'
alias ps='sudo pacman -Ss'
alias pr='sudo pacman -Rns'
alias cpm='sudo pacman -Sy'
alias upm='sudo pacman -Syu'



#functions

#gif
 gifs() {
	curl gif.xyzzy.run/"$1"
}

#tweet
 tweetnew() { 
	 curl -s https://decapi.me/twitter/latest?name="$1"
}

#textshare
 ctix() {
	echo "$@" | curl -F 'f:1=<-' ix.io
} 



#cheatsheet
 helpme() {
	 curl https://cheat.sh/"$1"
}



#rate-mirrors
alias mru='rate-mirrors --allow-root --protocol https  arch | sudo tee /etc/pacman.d/mirrorlist'


#colorscript
#colorscript random


#anime
alias anid="ani-cli --dub"
alias ani="ani-cli "
alias anic="ani-cli -c"

#mov/tv
alias mvs="lobster -i"
alias mvt="lobster -t"
alias mvc="lobster -c"

#names for lf
export PLAYER="mpv"
export EDITOR="vim"

#fzf
alias f="fzf"

#wallpaper 
alias wp='swww img ~/TwinklingStars.gif'


#jump
[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh

#terminal
alias brc='vim .bashrc'

#eval "$(starship init bash)"

#eval "$(thefuck --alias)"

eval "$(starship init bash)"
