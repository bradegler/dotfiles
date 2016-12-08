# name: my
set -g current_bg NONE
set segment_separator \uE0B0
set right_segment_separator \uE0B0

# ===========================
# Segments functions
# ===========================

function prompt_segment -d "Function to draw a segment"
  set -l bg
  set -l fg
  if [ -n "$argv[1]" ]
    set bg $argv[1]
  else
    set bg normal
  end
  if [ -n "$argv[2]" ]
    set fg $argv[2]
  else
    set fg normal
  end
  if [ "$current_bg" != 'NONE' -a "$argv[1]" != "$current_bg" ]
    set_color -b $bg
    set_color $current_bg
    echo -n "$segment_separator "
    set_color -b $bg
    set_color $fg
  else
    set_color -b $bg
    set_color $fg
    echo -n " "
  end
  set current_bg $argv[1]
  if [ -n "$argv[3]" ]
    echo -n -s $argv[3] " "
  end
end

function prompt_right_finish -d "Close open segments"
  if [ -n $current_bg ]
    set_color -b normal
    set_color $current_bg
  end
  #set -g current_bg NONE
end


# ===========================
# Theme components
# ===========================

function prompt_user -d "Display actual user if different from $default_user"
  if [ "$theme_display_user" = "yes" ]
    if [ "$USER" != "$default_user" -o -n "$SSH_CLIENT" ]
      set USER_PROMPT (whoami)@(hostname)
      prompt_segment black yellow $USER_PROMPT
    end
  end
end

function prompt_dir -d "Display the actual directory"
  prompt_segment blue black (prompt_pwd)
end

function fish_right_prompt
  prompt_dir
  prompt_right_finish
end
