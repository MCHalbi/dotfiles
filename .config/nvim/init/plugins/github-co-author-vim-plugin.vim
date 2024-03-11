function! IsGitRepo() abort
  return !(system('git rev-parse --is-inside-work-tree') ==? 'true')
endfunction

function! WriteAuthorsToCoauthorList() abort
  if IsGitRepo()
    let l:output = systemlist('git -C ' . shellescape(expand('%:p:h')) . ' shortlog HEAD -s -n -e | cut -c8-')
    let l:filename = expand('%:p:h') . '/.git_author'
    call writefile(l:output, l:filename)
  endif
endfunction

call WriteAuthorsToCoauthorList()
