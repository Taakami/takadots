{...}: {
  stylix.targets.zed = {
    enable = true;
  };
  programs.zed-editor = {
    enable = true;
    extensions = [
      "nix"
      "vue"
      "php"
      "csv"
      "oxc"
      "oxlint"
      "stylelint"
    ];
  };
}
