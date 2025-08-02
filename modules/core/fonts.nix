{pkgs, ...}: {
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    jetbrains-mono
    nerd-fonts.symbols-only
    twemoji-color-font
    noto-fonts-emoji
    maple-mono.variable
    maple-mono.NF
    (callPackage ./fonts/tabler-icons.nix {})
  ];
}
