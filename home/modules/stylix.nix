{ pkgs, config, ... }:

{
  stylix = {
    enable = true;
    image = config.lib.stylix.pixel "base00";
    #pkgs.runCommand "image.png" { } ''
    #      ${pkgs.imagemagick}/bin/magick -size 1x1 xc:#000000 $out
    #    '';
    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/mountain.yaml";
    fonts = {
      serif = {
        package = pkgs.noto-fonts;
        name = "Noto Serif";
      };
      sansSerif = {
        package = pkgs.noto-fonts;
        name = "Noto Sans";
      };
      monospace = {
        package = pkgs.cascadia-code;
        name = "Cascadia Code PL";
      };
      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };
    };
  };
}
