{pkgs, ...}:
let
  scrap_artvee = pkgs.writeScript "ima-artvee" (builtins.readFile ./scripts/scrap_artvee.nu);
in
{
  home.packages = [ scrap_artvee ];
}