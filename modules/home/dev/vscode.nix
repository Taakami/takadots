{ username, ... }:
{
  stylix.targets.vscode = {
    enable = true;
    profileNames = [
      "default"
      "${username}"
    ];
  };
  programs.vscode = {
    enable = true;
    profiles.${username} = {
      
    }
  };
}