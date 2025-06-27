{inputs, ...}: {
  # This overlay brings in the custom packages from ../pkgs
  additions = final: _prev: import ../pkgs final.pkgs;

  # This overlay contains whatever modifications you want
  # https://nixos.wiki/wiki/Overlays
  modifications = final: prev: {
  };

  # When this overlay is applied, the unstable nixpkgs set (declared in
  # `inputs`) is accessible through `pkgs.unstable`
  unstable-packages = final: _prev: {
    unstable = import inputs.nixpkgs-unstable {
      system = final.system;
      config.allowUnfree = true;
    };
  };
}
