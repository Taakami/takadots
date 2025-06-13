{ inputs, pkgs, ... }:
{
  imports = [
    inputs.zen-browser.homeModules.beta
  ];
  programs.zen-browser = {
    enable = true;
    nativeMessagingHosts = [pkgs.firefoxpwa];
    policies = {
      DisableAppUpdate = true;
      DisableTelemetry = true;
      DisableFeedbackCommands = true;
      DisablePocket = true;
      DontCheckDefaultBrowser = true;
      NoDefaultBookmarks = true;
      # find more options here: https://mozilla.github.io/policy-templates/
    };
  };
}