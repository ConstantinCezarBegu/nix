{
  programs.home-manager.enable = true;

  imports = [
    ./fonts
    ./programs
  ];

  nix.settings.auto-optimise-store = true;
  nix.gc = {
    automatic = true;
    frequency = "daily";
    options = "--delete-older-than 7d";
  };

  home.stateVersion = "23.05";
}
