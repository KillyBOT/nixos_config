# A themeing package
{
  pkgs,
  inputs,
  ...
}: {
  imports = [inputs.stylix.homeManagerModules.stylix];

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

    # We'll manually customize these
    targets = {
      neovim.enable = false;
      waybar.enable = false;
      wofi.enable = false;
      hyprland.enable = false;
      hyprlock.enable = false;
      librewolf.enable = false;
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
        package = pkgs.noto-fonts;
      };

      serif = {
        name = "Noto Serif";
        package = pkgs.noto-fonts;
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
  };
}
