# name: my
set -g current_bg NONE
set segment_separator \uE0B0
set right_segment_separator \uE0B0

set -g __fish_git_prompt_showdirtystate 'yes'
set -g __fish_git_prompt_char_dirtystate '±'
set -g __fish_git_prompt_char_cleanstate ''

function parse_git_dirty
  set -l submodule_syntax
  set submodule_syntax "--ignore-submodules=dirty"
  set git_dirty (command git status -s $submodule_syntax  2> /dev/null)
  if [ -n "$git_dirty" ]
    if [ $__fish_git_prompt_showdirtystate = "yes" ]
      echo -n "$__fish_git_prompt_char_dirtystate"
    end
  else
    if [ $__fish_git_prompt_showdirtystate = "yes" ]
      echo -n "$__fish_git_prompt_char_cleanstate"
    end
  end
end



function prompt_finish -d "Close open segments"
  if [ -n $current_bg  -a "$current_bg" != 'NONE' ]
    set_color -b normal
    set_color $current_bg
    echo -n "$segment_separator "
  end
  set -g current_bg NONE
end

function prompt_git -d "Display the actual git state"
  set -l ref
  set -l dirty
  if command git rev-parse --is-inside-work-tree >/dev/null 2>&1
    set dirty (parse_git_dirty)
    set ref (command git symbolic-ref HEAD 2> /dev/null)
    set ref (command git symbolic-ref HEAD 2> /dev/null)
    if [ $status -gt 0 ]
      set -l branch (command git show-ref --head -s --abbrev |head -n1 2> /dev/null)
      set ref "➦ $branch "
    end
    set branch_symbol \uE0A0
    set -l branch (echo $ref | sed  "s-refs/heads/-$branch_symbol -")
    if [ "$dirty" != "" ]
      prompt_segment yellow black "$branch $dirty"
    else
      prompt_segment green black "$branch $dirty"
    end
  end
end

function prompt_status -d "the symbols for a non zero exit status, root and background jobs"
    if [ $RETVAL -ne 0 ]
      prompt_segment black red "✘"
    end

    # if superuser (uid == 0)
    set -l uid (id -u $USER)
    if [ $uid -eq 0 ]
      prompt_segment black yellow "⚡"
    end

    # Jobs display
    if [ (jobs -l | wc -l) -gt 0 ]
      prompt_segment black cyan "⚙"
    end
end

# ===========================
# Apply theme
# ===========================

function fish_prompt
  set -g RETVAL $status
  prompt_status
  prompt_user
  prompt_git
  prompt_finish
end
