local awful = require("awful")

-- GLOBAL KEYBINDINGS
globalkeys = awful.util.table.join(globalkeys,
    --MULTIMEDIA KEYS
    awful.key({ }, "XF86AudioRaiseVolume", function () awful.util.spawn(raise_volume_cmd) end),
    awful.key({ }, "XF86AudioLowerVolume", function () awful.util.spawn(lower_volume_cmd) end),
    awful.key({ }, "XF86MonBrightnessDown", function () awful.util.spawn(brightness_cmd .. " down") end),
    awful.key({ }, "XF86MonBrightnessUp", function () awful.util.spawn(brightness_cmd .. " up") end),
    awful.key({ }, "XF86AudioMute", function () awful.util.spawn(mute_cmd) end),
    awful.key({ }, "XF86Launch4", function () awful.util.spawn(hibernate_cmd) end),
    --CHANGE KEYBOARD LAYOUT
    awful.key({ modkey,           }, "Shift_R", function () kbdcfg.switch() end),
    --PROMPT EXECUTE
    awful.key({ modkey },            "q",     function () mypromptbox[mouse.screen]:run() end)
)

-- CLIENT KEYS (work on current clients-windows)
clientkeys = awful.util.table.join(clientkeys,
    --KILL active client
    awful.key({ modkey, "Shift"   }, "#52",      function (c) c:kill()                         end)
)

-- CLIENT BUTTONS BINDINGS
--clientbuttons = awful.util.table.join(clientbuttons
--)