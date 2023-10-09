
local spawn   = require("awful.spawn")

spawn.with_shell("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
spawn.with_shell("/usr/bin/nm-applet")
spawn.with_shell("/usr/bin/xfce4-power-manager")
spawn.with_shell("/usr/bin/blueman-applet")
spawn.with_shell("$HOME/.screenlayout/normal.sh")
-- prevent multiple pa-applets
-- spawn.with_shell("killall pa-applet")
-- os.execute("sleep 0.25")
-- spawn.with_shell("/usr/bin/pa-applet")

-- prevent multiple pasystray
spawn.with_shell("killall pasystray")
os.execute("sleep 0.25")
spawn.with_shell("pasystray")

-- spawn.with_shell("killall kmonad")
-- os.execute("sleep 0.25")
-- spawn.with_shell("$HOME/.local/bin/kcheck.sh")

