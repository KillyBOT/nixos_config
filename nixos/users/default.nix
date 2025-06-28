{
  pkgs,
  config,
  ...
}: {
  users = {
    mutableUsers = false;
    users = {
      frampt = {
        description = "frampt";
        isNormalUser = true;

        initialHashedPassword = "$y$j9T$olffqlq8r/DdIwwQIfVZM.$1uct2hbKaSuoRQ2UEjyOGLqB5NPmLmnTZZzRw4O0p03";
        openssh.authorizedKeys.keys = [
          # Add public SSH keys here!
          "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHlEVCyL79NGBJq9dkDXbwxQrUMnW5CpHezjOhYesYkC edwards.kyle.j@gmail.com"
        ];

        extraGroups = [
          "networkmanager"
          "wheel"
          "audio"
          "video"
          "input"
          "power"
          "nix"
        ];
      };
    };
  };
}
