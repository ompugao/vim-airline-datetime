" vim: et ts=2 sts=2 sw=2

"if !get(g:, 'cwd_loaded', 0)
  "finish
"endif

let s:spc = g:airline_symbols.space

function! airline#extensions#datetime#init(ext)
  call airline#parts#define_raw('datetime', '%{airline#extensions#datetime#getdatetime()}')
  call a:ext.add_statusline_func('airline#extensions#datetime#apply')
endfunction

function! airline#extensions#datetime#apply(...)
  call airline#extensions#append_to_section('z',
        \ s:spc . g:airline_right_sep . s:spc . '%{airline#extensions#datetime#getdatetime()}')
endfunction

function! airline#extensions#datetime#getdatetime()
  return strftime("%y/%m/%d %T")
endfunction


