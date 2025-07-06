{
  inputs,
  pkgs,
  ...
}: {
  # Use NUR here
  nixpkgs.overlays = [
    inputs.nur.overlays.default
  ];

  programs.firefox = {
    enable = true;
    # Firefox but it doesn't spy on you!
    package = pkgs.librewolf;
    profiles."user" = {
      id = 0;
      isDefault = true;

      settings = {
        "privacy.resistFingerprinting" = false;

        "privacy.fingerprintingProtection" = true;
        "privacy.fingerprintingProtection.overrides" = "+AllTargets,-CSSPrefersColorScheme";

        "privacy.clearOnShutdown.history" = false;
        "privacy.clearOnShutdown.cookies" = false;
      };

      extensions.packages = with pkgs.nur.repos.rycee.firefox-addons; [
        ublock-origin
        bitwarden
        canvasblocker
      ];
    };
  };
}
