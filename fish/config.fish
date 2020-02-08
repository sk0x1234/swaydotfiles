# Start X at login
#if status is-login
#    if test -z "$DISPLAY" -a $XDG_VTNR = 1
#        exec startx -- -keeptty
#    end
#end
#
set -x XDG_CACHE_HOME "/tmp/$USER/.cache"
set -x  MOZ_ENABLE_WAYLAND "1" 
set -x GOPATH "/home/shree/ZZ/Progs/go"

set -x _JAVA_OPTIONS '-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
set -x _JAVA_AWT_WM_NONREPARENTING "1"
