{ ... }:
{
  services.skhd = {
    enable = true;
    skhdConfig = ''
      # FOCUS LAYER =====================================================================================
      # change window focus within space
      cmd + alt + ctrl - f6 : yabai -m window --focus south
      cmd + alt + ctrl - f5 : yabai -m window --focus north
      cmd - f21 : yabai -m window --focus west
      cmd - f22 : yabai -m window --focus east

      #change focus between external displays (left and right)
      cmd + alt - f3 : yabai -m display --focus west
      cmd + alt - f4 : yabai -m display --focus east

      # open terminal
      cmd + alt + ctrl - f21 : open -a Terminal

      # maximize a window
      cmd + alt + ctrl - f23 : yabai -m window --toggle zoom-fullscreen

      # toggle window float
      cmd + alt + ctrl - f22 : yabai -m window --toggle float --grid 4:4:1:1:2:2

      # balance out tree of windows (resize to occupy same area)
      cmd + alt - f10 : yabai -m space --balance

      # close application
      cmd + alt - f9 : yabai -m window --close

      # NAVIGATION LAYER =====================================================================================
      # swap windows
      cmd + alt - f24 : yabai -m window --swap south
      cmd + alt - f23 : yabai -m window --swap north
      cmd - f15 : yabai -m window --swap west
      cmd - f16 : yabai -m window --swap east

      # move window to display left and right
      cmd + alt - f1 : yabai -m window --display west; yabai -m display --focus west;
      cmd + alt - f2 : yabai -m window --display east; yabai -m display --focus east;

      #move window to prev and next space
      cmd + alt - f7 : if [[ $(yabai -m query --spaces --display | jq '.[0]."has-focus"') == "false" ]]; then yabai -m window --space prev && osascript -e 'tell application "System Events" to key code 123 using control down'; fi
      cmd + alt - f8 : if [[ $(yabai -m query --spaces --display | jq '.[-1]."has-focus"') == "false" ]]; then yabai -m window --space next && osascript -e 'tell application "System Events" to key code 124 using control down'; fi

      # rotate layout clockwise
      cmd + alt + ctrl - f16 : yabai -m space --rotate 270

      # flip along x-axis
      cmd + alt + ctrl - f12 : yabai -m space --mirror x-axis

      # flip along y-axis
      cmd + alt + ctrl - f11 : yabai -m space --mirror y-axis

      # restart yabai
      cmd + alt - f21 : yabai --restart-service

      # move window and split
      cmd - f9 : yabai -m window --warp west
      cmd - f10 : yabai -m window --warp east
      cmd + alt - f17 : yabai -m window --warp north
      cmd + alt - f18 : yabai -m window --warp south


      # RESIZE LAYER =====================================================================================
      # increase window size 
      cmd - f19 : yabai -m window --resize left:-25:0
      cmd + alt + ctrl - f8 : yabai -m window --resize bottom:0:25
      cmd + alt + ctrl - f7 : yabai -m window --resize top:0:-25
      cmd - f20 : yabai -m window --resize right:25:0

      # decrease window size 
      cmd - f13 : yabai -m window --resize left:25:0
      cmd + alt + ctrl - f2 : yabai -m window --resize bottom:0:-25
      cmd + alt + ctrl - f1 : yabai -m window --resize top:0:25
      cmd - f14 : yabai -m window --resize right:-25:0

      # restart skhd
      cmd + alt - f15 : skhd --restart-service
    '';
  };
}
