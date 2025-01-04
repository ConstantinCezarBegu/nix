{
  services.aerospace = {
    enable = true;

    settings = {
      enable-normalization-flatten-containers = true;
      enable-normalization-opposite-orientation-for-nested-containers = true;
      automatically-unhide-macos-hidden-apps = false;

      after-startup-command = [ "layout tiles" ];

      on-focus-changed = [ "move-mouse window-lazy-center" ];

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
        cmd-p = "flatten-workspace-tree";

        # Focus
        cmd-h = "focus left";
        cmd-j = "focus down";
        cmd-k = "focus up";
        cmd-l = "focus right";

        # Resize
        cmd-z = "resize width +50";
        cmd-x = "resize width -50";
        cmd-c = "resize height +50";
        cmd-v = "resize height -50";

        # Move
        cmd-shift-h = "move left";
        cmd-shift-j = "move down";
        cmd-shift-k = "move up";
        cmd-shift-l = "move right";

        # Join
        q = "join-with left";
        r = "join-with down";
        y = "join-with up";
        i = "join-with right";

        # Change workspace
        t = "move-node-to-workspace left";
        a = "move-node-to-workspace right";

        # Change monitor
        l = "move-node-to-monitor left";
        b = "move-node-to-monitor right";

        # Select specific workspace
        alt-1 = "workspace 1";
        alt-2 = "workspace 2";
        alt-3 = "workspace 3";
        alt-4 = "workspace 4";
        alt-5 = "workspace 5";
        alt-6 = "workspace 6";
        alt-7 = "workspace 7";
        alt-8 = "workspace 8";
        alt-9 = "workspace 9";

        # toggle full screen
        alt-r = "fullscreen";
      };
    };
  };
}
