if (exists('g:loaded_airline_datetime') && g:loaded_airline_datetime)
  finish
endif
let g:loaded_airline_datetime = 1
let &updatetime=500
autocmd CursorHold,CursorMoved,CursorMovedI * call s:update_statusline()
function s:update_statusline()
    call airline#update_statusline()
    return s:feed_keys()
endfunction

function! s:feed_keys()
    call feedkeys(mode() ==# 'i' ? "\<C-g>\<ESC>" : "g\<ESC>", 'n')
    return 1
endfunction
