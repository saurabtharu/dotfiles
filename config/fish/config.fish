if status is-interactive
    # Commands to run in interactive sessions can go here
end


# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end


alias la="lsd -alh"
alias ll="lsd -ltr"
alias ls="lsd"
alias lt="ls -ltr"
alias ffmpegaudio="bash /home/saurab/.config/ffmpeg/withaudio.sh"
alias ffmpegnoaudio="bash /home/saurab/.config/ffmpeg/withoutaudio.sh"
alias i="curl ifconfig.io"
alias I="curl ifconfig.me"
alias cls="clear"
alias batman="bat"
alias n2t="zathura ~/Downloads/nand2tetris/nand2tetris\ -\ Noam\ Nisan,\ Shimon\ Schocken\ -\ The\ Elements\ of\ Computing\ Systems_\ Building\ a\ Modern\ Computer\ from\ First\ Principles\ \(2005,\ The\ MIT\ Press\)\ -\ libgen.lc.epub"

alias fuck="killall"

set -g -x  OPENAI_API_KEY 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

set -x PATH /home/saurab/.cargo/bin $PATH
starship init fish | source
