" Fallback to setting up the plugin automatically
if !exists("g:discordpresence_has_setup")
lua << EOF
    local Presence = require("discordpresence"):setup()
    Presence.log:debug("Custom setup not detected, using defaults")
EOF
endif
