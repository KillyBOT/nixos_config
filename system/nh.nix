# A version of nix that actually prints good error messages
{...}: {
  programs.nh = {
    enable = true;
  };
}
