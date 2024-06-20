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
        inputs'.phps.packages.env-php82
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
              pkgs.nodePackages.prettier
              pkgs.treefmt
            ];
        };
        ci = pkgs.mkShell { buildInputs = commonPkgs; };
      };
    };
}
