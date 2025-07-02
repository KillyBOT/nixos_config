{...}: {
  programs.librewolf = {
    enable = true;
    settings = {
      # resistFingerprinting is overkill
      "privacy.resistFingerprinting" = false;
      "privacy.fingerprintingProtection" = true;
      "privacy.fingerprintingProtection.overrides" = "+AllTargets,-CSSPreversColorScheme";
    };
  };
}
