{host, ...}: {
  imports = [
    (
      if host == "mars"
      then ./grub.nix
      else ./systemd.nix
    )
  ];
}
