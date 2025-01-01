{ ... }:
{
  services.skhd = {
    enable = true;
    skhdConfig = ''
      # FOCUS LAYER =====================================================================================
      # change window focus within space
      cmd + shift + alt + ctrl - f11 : yabai -m window --focus south
      cmd + shift + alt + ctrl - f7 : yabai -m window --focus north
      cmd + shift + alt + ctrl - f10 : yabai -m window --focus west
      cmd + shift + alt + ctrl - f12 : yabai -m window --focus east

      #change focus between external displays (left and right)
      cmd + shift + alt + ctrl - f6 : yabai -m display --focus west
      cmd + shift + alt + ctrl - f8 : yabai -m display --focus east

      # open terminal
      cmd + shift + alt + ctrl - f1 : open -a Terminal

      # maximize a window
      cmd + shift + alt + ctrl - f2 : yabai -m window --toggle zoom-fullscreen

      # toggle window float
      cmd + shift + alt + ctrl - f3 : yabai -m window --toggle float --grid 4:4:1:1:2:2

      # balance out tree of windows (resize to occupy same area)
      cmd + shift + alt + ctrl - f4 : yabai -m space --balance

      # close application
      cmd + shift + alt + ctrl - f5 : yabai -m window --close

      # NAVIGATION LAYER =====================================================================================
      # swap windows
      shift + alt + ctrl - f11 : yabai -m window --swap south
      shift + alt + ctrl - f7 : yabai -m window --swap north
      shift + alt + ctrl - f10 : yabai -m window --swap west
      shift + alt + ctrl - f12 : yabai -m window --swap east

      # move window to display left and right
      shift + alt + ctrl - f6 : yabai -m window --display west; yabai -m display --focus west;
      shift + alt + ctrl - f8 : yabai -m window --display east; yabai -m display --focus east;

      #move window to prev and next space
      shift + alt + ctrl - f13 : if [[ $(yabai -m query --spaces --display | jq '.[0]."has-focus"') == "false" ]]; then yabai -m window --space prev && osascript -e 'tell application "System Events" to key code 123 using control down'; fi
      shift + alt + ctrl - f15 : if [[ $(yabai -m query --spaces --display | jq '.[-1]."has-focus"') == "false" ]]; then yabai -m window --space next && osascript -e 'tell application "System Events" to key code 124 using control down'; fi

      # rotate layout clockwise
      shift + alt + ctrl - f14 : yabai -m space --rotate 270

      # flip along x-axis
      shift + alt + ctrl - f16 : yabai -m space --mirror x-axis

      # flip along y-axis
      shift + alt + ctrl - f9 : yabai -m space --mirror y-axis

      # restart yabai
      shift + alt + ctrl - f5 : yabai --restart-service

      # move window and split
      shift + alt + ctrl - f1 : yabai -m window --warp west
      shift + alt + ctrl - f2 : yabai -m window --warp east
      shift + alt + ctrl - f3 : yabai -m window --warp north
      shift + alt + ctrl - f4 : yabai -m window --warp south


      # RESIZE LAYER =====================================================================================
      # increase window size 
      alt + ctrl - f6 : yabai -m window --resize left:-25:0
      alt + ctrl - f7 : yabai -m window --resize bottom:0:25
      alt + ctrl - f2 : yabai -m window --resize top:0:-25
      alt + ctrl - f8 : yabai -m window --resize right:25:0

      # decrease window size 
      alt + ctrl - f13 : yabai -m window --resize left:25:0
      alt + ctrl - f14 : yabai -m window --resize bottom:0:-25
      alt + ctrl - f11 : yabai -m window --resize top:0:25
      alt + ctrl - f15 : yabai -m window --resize right:-25:0

      # restart skhd
      alt + ctrl - f5 : skhd --restart-service
    '';
  };
}
