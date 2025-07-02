{pkgs, ...}: {
  programs.neovim = {
    enable = true;
    # TODO: Figure out how to use nixvim
    extraPackages = with pkgs; [
      nil
      lua-language-server
    ];
  };
}
