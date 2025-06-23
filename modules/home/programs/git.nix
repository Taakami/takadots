{...}:
{
  programs = {
    git = {
      enable = true;
      userName = "Taakami";
      userEmail = "dastan39@outlook.fr";
    }; # classic git
    gitui.enable = true; # git with ui
    gh = {
      enable = true;
      gitCredentialHelper = {
        enable = true;
      };
      hosts = {
        "github.com" = {
          user = "Taakami";
        };
      };
    }; # github cli
  };
}