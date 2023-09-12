" Define autocommands to handle auto-update events
function discordpresence#SetAutoCmds()
    augroup discordpresence_events
        autocmd!
        if exists("g:presence_auto_update") && g:presence_auto_update
            autocmd FocusGained * lua package.loaded.discordpresence:handle_focus_gained()
            autocmd TextChanged * lua package.loaded.discordpresence:handle_text_changed()
            autocmd VimLeavePre * lua package.loaded.discordpresence:handle_vim_leave_pre()
            autocmd WinEnter * lua package.loaded.discordpresence:handle_win_enter()
            autocmd WinLeave * lua package.loaded.discordpresence:handle_win_leave()
            autocmd BufEnter * lua package.loaded.discordpresence:handle_buf_enter()
            autocmd BufAdd * lua package.loaded.discordpresence:handle_buf_add()
        endif
    augroup END
endfunction
