{
  inputs,
  ...
}:
{
  imports = [
    inputs.stylix.nixosModules.stylix
  ];
  stylix.targets.grub.enable = true;
}