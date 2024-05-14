{ ... }:
{

  perSystem =
    {
      config,
      inputs',
      pkgs,
      ...
    }:
    {
      pre-commit.settings = {
        hooks = {
          check-json.enable = true;
          check-xml.enable = true;
          check-yaml.enable = true;
          markdownlint.enable = true;
          markdownlint.stages = [ "pre-commit" ];
          yamllint.enable = true;
          yamllint.stages = [ "pre-commit" ];
        };
        default_stages = [
          # "commit"
          "commit-msg"
          "manual"
          "merge-commit"
          "pre-commit"
          "pre-push"
          "push"
          # "prepare-commit-message"
          "manual"
        ];
      };
    };
}
