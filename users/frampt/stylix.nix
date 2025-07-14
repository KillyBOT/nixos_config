# A themeing package
{
  pkgs,
  inputs,
  ...
}: {
  imports = [inputs.stylix.homeModules.stylix];

  home.packages = with pkgs; [
    hack-font
    nerd-fonts.hack
    noto-fonts
    nerd-fonts.noto
    noto-fonts-lgc-plus
    noto-fonts-emoji
    # powerline-fonts
    # powerline-symbols
  ];

  stylix = {
    enable = true;
    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark.yaml";

    targets = {
      firefox.profileNames = ["user"];
    };

    fonts = {
      emoji = {
        name = "Noto Color Emoji";
        package = pkgs.noto-fonts-color-emoji;
      };

      monospace = {
        name = "Hack";
        package = pkgs.nerd-fonts.hack;
      };

      sansSerif = {
        name = "Noto Sans";
        package = pkgs.nerd-fonts.noto;
      };

      serif = {
        name = "Noto Serif";
        package = pkgs.nerd-fonts.noto;
      };

      sizes = {
        terminal = 12;
        applications = 10;
      };
    };

    iconTheme = {
      enable = true;
      package = pkgs.papirus-icon-theme;
      dark = "Papirus-Dark";
      light = "Papirus-Light";
    };

    image = pkgs.fetchurl {
      url = "https://codeberg.org/lunik1/nixos-logo-gruvbox-wallpaper/raw/branch/master/png/gruvbox-dark-rainbow.png";
      sha256 = "036gqhbf6s5ddgvfbgn6iqbzgizssyf7820m5815b2gd748jw8zc";
    };
  };
}
