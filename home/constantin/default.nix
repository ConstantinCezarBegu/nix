{
  imports = [
    ./fonts
    ./programs
  ];

  programs.home-manager.enable = true;

  nix.settings.auto-optimise-store = true;
  nix.gc = {
    automatic = true;
    frequency = "daily";
    options = "--delete-older-than 7d";
  };

  home.stateVersion = "23.05";
}
