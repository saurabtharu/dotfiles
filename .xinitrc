#!/bin/bash

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

## polkit deamon
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/pipewire-media-session &
# lock the computer if it is inactive for 4 minutes
xautolock -time 10 -locker slock&
export _JAVA_AWT_WM_NONREPARENTING=1
# export DEBUGINFOD_URLS="https://debuginfod.archlinux.org"               # for running valgrind 
export PATH="$PATH:/home/saurab/.cargo/bin"
export PATH="$PATH:/home/saurab/.dotnet/tools"
export OPENAI_API_KEY=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
export DOTNET_CLI_TELEMETRY_OPTOUT=1
exec bspwm 




# exec mwm
