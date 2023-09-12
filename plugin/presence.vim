" Fallback to setting up the plugin automatically
if !exists("g:presence_has_setup")
lua << EOF
    local Presence = require("discord-presence"):setup()
    Presence.log:debug("Custom setup not detected, using defaults")
EOF
endif
