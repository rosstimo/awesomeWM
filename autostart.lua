
local spawn   = require("awful.spawn")

spawn.with_shell("/usr/bin/nm-applet")
spawn.with_shell("/usr/bin/xfce4-power-manager")
spawn.with_shell("/usr/bin/blueman-applet")
-- prevent multiple pa-applets
spawn.with_shell("killall pa-applet")
os.execute("sleep 0.25")
spawn.with_shell("/usr/bin/pa-applet")

