-- Load Modules
local apps = require("programs")
require("monitors")
require("settings")
require("autostart")
require("binds")

-- Environment Variables
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- Window Rules
hl.window_rule({
    name = "suppress-maximize",
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    name = "satty-center",
    match = { class = "com.gabm.satty" },
    float = true,
    center = true,
    size = "1289 720"
})

-- XWayland drag fix
hl.window_rule({
    name = "fix-xwayland-drags",
    match = { class = "^$", title = "^$", xwayland = true },
    no_focus = true,
})
