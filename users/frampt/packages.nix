{
  pkgs,
  lib,
  ...
}: {
  # TODO: Should I set this globally?
  nixpkgs.config.allowUnfree = true;

  # Commented out packages have special configs with home-manager
  home.packages = with pkgs; [
    # Desktop
    bitwarden-desktop # Bitwarden desktop client
    gimp # We have photoshop at home
    mpv # Video player
    obs-studio # FOSS video recorder
    obsidian # Note-taking software
    pavucontrol # Volume control
    prismlauncher # Minecraft
    signal-desktop # Very legal messaging app

    # Utils
    # bat # `cat` but better
    bc # Calculator
    bitwarden-cli # Password manager
    ffmpeg # Convert between audio & video formats
    file # Get information about a file (e.g. type)
    fzf # `fzf`; Fuzzy finder
    git-graph
    imagemagick # Image viewer
    microfetch
    ntfs3g
    ripgrep # Grep but better
    rsync # File transfer
    tree # List things in a tree
    which # Figure out where a binary is located
    wl-clipboard

    # Archives
    gnutar # `tar`
    p7zip
    unzip
    xz
    zip

    # Nix related
    nix-output-monitor # Provides `nom`, which is `nix` but better

    # Sys utils
    btop # htop but better
    # htop # top but better
    iftop # Network top
    iotop # IO top
    lsof # List open file descriptors
    ltrace # Trace library calls
    strace # Trace system calls
    sysstat # Performant monitoring tools

    # Network utils
    dnsutils # DNS tools (`dig` + `nslookup`)
    ipcalc # Calculator for IP addresses
    iperf3
    nmap # A tool for network discovery
    wget # Get things from the network

    # Coding
    clang # gcc but better, should I give it priority?
    cmake # `cmake`; Make but "better"
    (lib.hiPrio gcc) # `gcc`; C compiler. Why is this not installed to begin with?
    go # C but better, but also worse
    gnumake # `make`; Again, why is this not included by default?
    python314 # Python 3.14
    rustup # Rust manager

    # WM stuff
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    # Misc.
    cbonsai # ASCII bonsai trees
    cmatrix # 1337 hax0r
    cowsay
    figlet # Pretty text
    neofetch # The only necessary package tbh
  ];
}
