{ config, ... }:
{
  homebrew = {
    enable = true;
    taps = builtins.attrNames config.nix-homebrew.taps;
    global = {
      # nix-homebrew is handling homebrew updates
      autoUpdate = false;
    };
    onActivation = {
      # "zap" removes manually installed brews and casks
      cleanup = "zap";
      # nix-homebrew is handling homebrew updates
      autoUpdate = false;
      upgrade = true;
    };
    caskArgs = {
      no_quarantine = true;
    };

    brews = [
      "mas"
    ];
    casks = [
      "android-studio"
    ];
    masApps = {
      # Browser extensions
      "Dark Reader" = 1438243180;
      "Accelerate" = 1459809092;
      "AdGuard" = 1440147259;
      "Auto HD for Youtube" = 1546729687;
      "SponsorBlock" = 1573461917;
      "Hush" = 1544743900;
      "BlockYT" = 1575379461;
      "Keepa" = 1533805339;

      # Apple dev tools
      "Xcode" = 497799835;
      "Developer" = 640199958;
      "TestFlight" = 899247664;
      "Transporter" = 1450874784;
      "Swift Playground" = 1496833156;

      # Default Apple Mac os apps
      "GarageBand" = 682658836;
      "Numbers" = 409203825;
      "Pages" = 409201541;
      "Keynote" = 409183694;
      "iMovie" = 408981434;

      # Other
      "Monodraw" = 920404675;
    };
  };
}
