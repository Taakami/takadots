{pkgs, ...}:
{
  home.packages = [ 
    pkgs.writeScriptBin "ima-artvee" (builtins.readFile ./scripts/scrap_artvee.nu)
  ];
}