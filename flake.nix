{
  description = "Darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    agenix.url = "github:ryantm/agenix";
    fenix.url = "github:nix-community/fenix";
    neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
    stylix.url = "github:danth/stylix";
  };

  outputs =
    inputs@{
      self,
      nix-darwin,
      nixpkgs,
      nix-homebrew,
      home-manager,
      agenix,
      ...
    }:
    let
      configuration =
        { pkgs, config, ... }:
        {

          nixpkgs.config.allowUnfree = true;

          # Auto upgrade nix package and the daemon service.
          services.nix-daemon.enable = true;

          # Necessary for using flakes on this system.
          nix.settings.experimental-features = "nix-command flakes";

          # Set Git commit hash for darwin-version.
          system.configurationRevision = self.dirtyRev;

          # Used for backwards compatibility, please read the changelog before changing.
          # $ darwin-rebuild changelog
          system.stateVersion = 5;

          # The platform the configuration will be used on.
          nixpkgs.hostPlatform = "aarch64-darwin";
        };
    in
    {
      # Build darwin flake using:
      # $ darwin-rebuild build --flake .#simple
      darwinConfigurations."macbook_air" = nix-darwin.lib.darwinSystem {
        modules = [
          configuration
          ./home/constantin/modules
          home-manager.darwinModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.constantinbegu = import ./home/constantin;

            # Optionally, use home-manager.extraSpecialArgs to pass
            # arguments to home.nix
          }
          {
            nixpkgs.overlays = [
              inputs.fenix.overlays.default
              inputs.neovim-nightly-overlay.overlays.default
            ];
          }
          agenix.darwinModules.default
          inputs.stylix.darwinModules.stylix
        ];
        specialArgs = { inherit nix-homebrew agenix; };
      };

      # Expose the package set, including overlays, for convenience.
      darwinPackages = self.darwinConfigurations."macbook_air".pkgs;
    };
}
