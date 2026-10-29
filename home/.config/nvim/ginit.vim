" Enable Mouse
set mouse=a

" Set Editor Font
if exists(':GuiFont')
    " Use GuiFont! to ignore font errors
    let s:fontsize = 10
    let s:fontname = "progsole-ttf"
   execute "GuiFont! " . s:fontname . ":h" . s:fontsize 

   function! AdjustFontSize(amount)
        let s:fontsize = s:fontsize + a:amount
        if s:fontsize < 6
            let s:fontsize = 6
        elseif s:fontsize > 36
            let s:fontsize = 36
        endif
        execute "GuiFont! " . s:fontname . ":h" . s:fontsize
        echo "Font size: " . s:fontsize
    endfunction

    " Keybindings for Normal mode
    nnoremap <C-+> :call AdjustFontSize(1)<CR>
    nnoremap <C-=> :call AdjustFontSize(1)<CR>
    nnoremap <C--> :call AdjustFontSize(-1)<CR>
    nnoremap <C-_> :call AdjustFontSize(-1)<CR> 
endif

" Disable GUI Tabline
if exists(':GuiTabline')
    GuiTabline 0
endif

" Disable GUI Popupmenu
if exists(':GuiPopupmenu')
    GuiPopupmenu 0
endif

" Enable GUI ScrollBar
if exists(':GuiScrollBar')
    GuiScrollBar 1
endif

" Ensure raw Qt key events pass to Neovim core
if exists(':GuiKey' )
    " Disable native OS shortcut hijacking
    GuiKey 1
endif

" Right Click Context Menu (Copy-Cut-Paste)
nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
xnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
snoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv
