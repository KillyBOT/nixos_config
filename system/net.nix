{...}: {
  networking = {
    networkmanager.enable = true;
    firewall.enable = true;
  };

  # Enable OpenSSH
  # services.openssh = {
  #   enable = true;
  #   settings = {
  #     X11Forwarding = false;
  #     PermitRootLogin = "no";
  #     PasswordAuthentication = false;
  #   };
  #   openFirewall = true;
  # };
}
