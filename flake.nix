{
  description = "Klein College PHP Coding Standards";

  inputs.devshell.url = "github:numtide/devshell";
  inputs.devshell.inputs.nixpkgs.follows = "nixpkgs";
  inputs.flake-parts.url = "github:hercules-ci/flake-parts";
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  outputs = inputs @ {
    flake-parts,
    devshell,
    ...
  }:
    flake-parts.lib.mkFlake {inherit inputs;} {
      imports = [devshell.flakeModule];
      systems = [
        "aarch64-darwin"
        "aarch64-linux"
        "x86_64-linux"
      ];
      perSystem = {pkgs, ...}: {
        devshells.default = {
          name = "kleinweb/php-coding-standards";
          commands = [
            {
              category = "maintenance";
              package = pkgs.cocogitto;
            }
            {
              category = "maintenance";
              package = pkgs.php81Packages.composer;
              name = "composer";
            }
          ];
        };
      };
    };
}
