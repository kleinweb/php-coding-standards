{ ... }:
{
  perSystem =
    {
      config,
      inputs',
      pkgs,
      ...
    }:
    let
      commonPkgs = [
        inputs'.nixpkgs-trunk.legacyPackages.biome
        inputs'.nixpkgs-trunk.legacyPackages.just
        inputs'.phps.packages.env-php82

        # standard utils
        pkgs.jq
        pkgs.fd
        pkgs.ripgrep
      ];
    in
    {
      devShells = {
        default = pkgs.mkShell {
          shellHook = ''
            ${config.pre-commit.installationScript}
          '';
          buildInputs =
            config.pre-commit.settings.enabledPackages
            ++ commonPkgs
            ++ [
              pkgs.cocogitto
              pkgs.git-cliff
              pkgs.nixfmt-rfc-style
            ];
        };
        ci = pkgs.mkShell { buildInputs = commonPkgs; };
      };
    };
}
