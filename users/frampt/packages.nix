{pkgs, ...}: {
  # TODO: Should I set this globally?
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Desktop
    mpv
    obsidian

    # CLI Utils
    bc
    btop
    ffmpeg
    fzf
    git-graph
    htop
    ntfs3g
    microfetch
    ripgrep
    unzip
    wget
    wl-clipboard
    zip

    # Coding
    openjdk23
    python314
    rustup

    # Other
    cbonsai
    cmatrix
    cowsay
  ];
}
