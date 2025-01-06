{
  services.aerospace = {
    enable = true;

    settings = {
      enable-normalization-flatten-containers = true;
      enable-normalization-opposite-orientation-for-nested-containers = true;
      automatically-unhide-macos-hidden-apps = false;

      after-startup-command = [ "layout tiles" ];

      on-focus-changed = [ "move-mouse window-lazy-center" ];
      on-focused-monitor-changed = [ "move-mouse window-lazy-center" ];

      # Possible values: horizontal|vertical|auto
      # 'auto' means: wide monitor (anything wider than high) gets horizontal orientation,
      #               tall monitor (anything higher than wide) gets vertical orientation
      default-root-container-orientation = "auto";

      gaps = {
        inner.horizontal = 8;
        inner.vertical = 8;
        outer.left = 8;
        outer.bottom = 8;
        outer.top = 8;
        outer.right = 8;
      };

      mode.main.binding = {
        # Reset workspace
        cmd-alt-ctrl-shift-f1 = "flatten-workspace-tree";

        # Focus
        cmd-alt-ctrl-shift-f2 = "focus left";
        cmd-alt-ctrl-shift-f3 = "focus right";
        cmd-alt-ctrl-shift-f4 = "focus up";
        cmd-alt-ctrl-shift-f5 = "focus down";

        # Resize
        cmd-alt-ctrl-shift-f6 = "resize width -50";
        cmd-alt-ctrl-shift-f7 = "resize width +50";
        cmd-alt-ctrl-shift-f8 = "resize height -50";
        cmd-alt-ctrl-shift-f9 = "resize height +50";

        # Move
        cmd-alt-ctrl-shift-f10 = [
          "move left"
          "move-mouse window-lazy-center"
        ];
        cmd-alt-ctrl-shift-f11 = [
          "move right"
          "move-mouse window-lazy-center"
        ];
        cmd-alt-ctrl-shift-f12 = [
          "move up"
          "move-mouse window-lazy-center"
        ];
        cmd-alt-ctrl-shift-f13 = [
          "move down"
          "move-mouse window-lazy-center"
        ];

        # Join
        cmd-alt-ctrl-shift-f14 = "join-with left";
        cmd-alt-ctrl-shift-f15 = "join-with right";
        cmd-alt-ctrl-shift-f16 = "join-with up";
        cmd-alt-ctrl-shift-f17 = "join-with down";

        # Focus workspace
        cmd-alt-ctrl-shift-f18 = "workspace prev";
        cmd-alt-ctrl-shift-f19 = "workspace next";

        # Move active window to workspace
        cmd-alt-ctrl-shift-f20 = "move-node-to-workspace prev";
        cmd-alt-ctrl-f1 = "move-node-to-workspace next";

        # Change monitor focus
        cmd-alt-ctrl-f2 = "focus-monitor prev";
        cmd-alt-ctrl-f3 = "focus-monitor next";

        # Change window to monitor
        cmd-alt-ctrl-f4 = "move-node-to-monitor prev";
        cmd-alt-ctrl-f5 = "move-node-to-monitor next";

        # Move workspace to monitor
        cmd-alt-ctrl-f6 = "move-workspace-to-monitor prev";
        cmd-alt-ctrl-f7 = "move-workspace-to-monitor next";

        # toggle full screen
        cmd-alt-ctrl-f8 = "fullscreen";

        # Focus back and forth
        cmd-alt-ctrl-f9 = "focus-back-and-forth";

        # Select specific workspace
        cmd-f1 = "workspace 1";
        cmd-f2 = "workspace 2";
        cmd-f3 = "workspace 3";
        cmd-f4 = "workspace 4";
        cmd-f5 = "workspace 5";
        cmd-f6 = "workspace 6";
        cmd-f7 = "workspace 7";
        cmd-f8 = "workspace 8";

        # move to specific workspace
        cmd-f11 = "move-node-to-workspace 1";
        cmd-f12 = "move-node-to-workspace 2";
        cmd-f13 = "move-node-to-workspace 3";
        cmd-f14 = "move-node-to-workspace 4";
        cmd-f15 = "move-node-to-workspace 5";
        cmd-f16 = "move-node-to-workspace 6";
        cmd-f17 = "move-node-to-workspace 7";
        cmd-f18 = "move-node-to-workspace 8";
      };
    };
  };
}
