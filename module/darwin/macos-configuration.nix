{
  power.sleep.allowSleepByPowerButton = false;
  power.sleep.computer = 15;
  power.sleep.display = 10;
  power.restartAfterFreeze = true;
  # power.restartAfterPowerFailure = true; fails silently

  security.pam.enableSudoTouchIdAuth = true;

  system.defaults = {
    controlcenter = {
      AirDrop = false;
      BatteryShowPercentage = false;
      Bluetooth = false;
      Display = false;
      FocusModes = false;
      NowPlaying = false;
      Sound = false;
    };

    dock = {
      appswitcher-all-displays = false;
      autohide = true;
      autohide-delay = 0.24;
      autohide-time-modifier = 1.0;
      dashboard-in-overlay = false;
      enable-spring-load-actions-on-all-items = false;
      expose-animation-duration = 1.0;
      expose-group-apps = true;
      largesize = 16;
      launchanim = false;
      magnification = false;
      mineffect = "scale";
      minimize-to-application = false;
      mouse-over-hilite-stack = false;
      mru-spaces = false;
      orientation = "bottom";
      persistent-apps = [ ];
      persistent-others = [ ];
      scroll-to-open = false;
      show-process-indicators = false;
      show-recents = false;
      showhidden = false;
      slow-motion-allowed = false;
      static-only = true;
      tilesize = 48;
      wvous-bl-corner = 1;
      wvous-br-corner = 1;
      wvous-tl-corner = 1;
      wvous-tr-corner = 1;
    };

    finder = {
      _FXShowPosixPathInTitle = true;
      _FXSortFoldersFirst = true;
      _FXSortFoldersFirstOnDesktop = false;
      AppleShowAllExtensions = true;
      AppleShowAllFiles = true;
      CreateDesktop = false;
      FXDefaultSearchScope = "SCcf";
      FXEnableExtensionChangeWarning = false;
      FXPreferredViewStyle = "clmv";
      FXRemoveOldTrashItems = true;
      NewWindowTarget = "Computer";
      QuitMenuItem = true;
      ShowExternalHardDrivesOnDesktop = false;
      ShowHardDrivesOnDesktop = false;
      ShowMountedServersOnDesktop = false;
      ShowPathbar = true;
      ShowRemovableMediaOnDesktop = false;
      ShowStatusBar = true;
    };

    hitoolbox.AppleFnUsageType = "Show Emoji & Symbols";

    loginwindow = {
      autoLoginUser = "Off";
      DisableConsoleAccess = true;
      GuestEnabled = false;
      LoginwindowText = "";
      PowerOffDisabledWhileLoggedIn = false;
      RestartDisabled = true;
      RestartDisabledWhileLoggedIn = false;
      SHOWFULLNAME = false;
      ShutDownDisabled = true;
      ShutDownDisabledWhileLoggedIn = false;
      SleepDisabled = true;
    };

    magicmouse.MouseButtonMode = "TwoButton";

    menuExtraClock = {
      FlashDateSeparators = false;
      IsAnalog = false;
      Show24Hour = true;
      ShowAMPM = false;
      ShowDate = 2;
      ShowDayOfMonth = false;
      ShowDayOfWeek = false;
      ShowSeconds = true;
    };

    NSGlobalDomain = {
      "com.apple.keyboard.fnState" = true;
      "com.apple.mouse.tapBehavior" = null;
      "com.apple.sound.beep.feedback" = 1;
      "com.apple.sound.beep.volume" = 0.6065307;
      "com.apple.springing.delay" = 0.5;
      "com.apple.springing.enabled" = false;
      "com.apple.swipescrolldirection" = true;
      "com.apple.trackpad.enableSecondaryClick" = true;
      "com.apple.trackpad.forceClick" = false;
      "com.apple.trackpad.scaling" = 2.5;
      "com.apple.trackpad.trackpadCornerClickBehavior" = null;
      _HIHideMenuBar = true;
      AppleEnableMouseSwipeNavigateWithScrolls = false;
      AppleEnableSwipeNavigateWithScrolls = false;
      AppleFontSmoothing = 0;
      AppleICUForce24HourTime = true;
      AppleInterfaceStyle = "Dark";
      AppleInterfaceStyleSwitchesAutomatically = false;
      AppleKeyboardUIMode = null;
      AppleMeasurementUnits = "Centimeters";
      AppleMetricUnits = 1;
      ApplePressAndHoldEnabled = false;
      AppleScrollerPagingBehavior = true;
      AppleShowAllExtensions = true;
      AppleShowAllFiles = true;
      AppleShowScrollBars = "Always";
      AppleSpacesSwitchOnActivate = true;
      AppleTemperatureUnit = "Celsius";
      AppleWindowTabbingMode = "manual";
      InitialKeyRepeat = 25;
      KeyRepeat = 2;
      NSAutomaticCapitalizationEnabled = false;
      NSAutomaticDashSubstitutionEnabled = false;
      NSAutomaticInlinePredictionEnabled = false;
      NSAutomaticPeriodSubstitutionEnabled = false;
      NSAutomaticQuoteSubstitutionEnabled = false;
      NSAutomaticSpellingCorrectionEnabled = false;
      NSAutomaticWindowAnimationsEnabled = false;
      NSDisableAutomaticTermination = false;
      NSDocumentSaveNewDocumentsToCloud = true;
      NSNavPanelExpandedStateForSaveMode = false;
      NSNavPanelExpandedStateForSaveMode2 = true;
      NSScrollAnimationEnabled = false;
      NSTableViewDefaultSizeMode = 1;
      NSTextShowsControlCharacters = false;
      NSUseAnimatedFocusRing = false;
      NSWindowResizeTime = 0.1;
      NSWindowShouldDragOnGesture = true;
      PMPrintingExpandedStateForPrint = false;
      PMPrintingExpandedStateForPrint2 = false;
    };

    screencapture = {
      disable-shadow = true;
      include-date = false;
      location = "/Users/constantinbegu/Pictures";
      show-thumbnail = false;
      type = "jpg";
    };

    screensaver = {
      askForPassword = true;
      askForPasswordDelay = 0;
    };

    SoftwareUpdate.AutomaticallyInstallMacOSUpdates = false;

    spaces.spans-displays = true;

    trackpad = {
      ActuationStrength = 0;
      Clicking = false;
      Dragging = false;
      FirstClickThreshold = 0;
      SecondClickThreshold = null;
      TrackpadRightClick = true;
      TrackpadThreeFingerDrag = false;
      TrackpadThreeFingerTapGesture = 0;
    };

    universalaccess = {
      closeViewScrollWheelToggle = false;
      closeViewZoomFollowsFocus = false;
      mouseDriverCursorSize = 1.0;
      reduceMotion = true;
      reduceTransparency = true;
    };

    WindowManager = {
      AppWindowGroupingBehavior = true;
      AutoHide = true;
      EnableStandardClickToShowDesktop = false;
      EnableTiledWindowMargins = true;
      GloballyEnabled = false;
      HideDesktop = true;
      StageManagerHideWidgets = true;
      StandardHideDesktopIcons = true;
      StandardHideWidgets = true;
    };

    CustomUserPreferences = {
      "com.apple.Accessibility" = {
        "EnhancedBackgroundContrastEnabled" = 1;
        "DarkenSystemColors" = 1;
        "ReduceMotionAutoplayAnimatedImagesEnabled" = 0;
        "PrefersNonBlinkingCursorIndicator" = 1;
      };

      "com.apple.controlcenter" = {
        "NSStatusItem Visible Sound" = false;
        "NSStatusItem Visible Bluetooth" = false;
        "NSStatusItem Visible NowPlaying" = false;
        "NSStatusItem Visible AudioVideoModule" = false;
        "NSStatusItem Visible FocusModes" = false;
        "NSStatusItem Visible Battery" = false;
        "NSStatusItem Visible WiFi" = false;
        "NSStatusItem Visible BentoBox" = false;
      };

      "com.apple.dock" = {
        "enterMissionControlByTopWindowDrag" = false;
      };

      "com.apple.WindowManager" = {
        "EnableTilingByEdgeDrag" = false;
        "EnableTiledWindowMargins" = false;
        "EnableTopTilingByEdgeDrag" = false;
        "EnableTilingOptionAccelerator" = false;
      };
    };
  };

  system.keyboard.enableKeyMapping = false;

  system.startup.chime = false;

  time.timeZone = "America/Edmonton";
}
