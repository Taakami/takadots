# Edit this configuration file to define what should be installed on
# your system.
{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    # Include the results of a hardware scan.
    ./hardware-configuration.nix # You might need to generate this based on your hardware
  ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  networking = {
    # Enable network manager.
    networkmanager.enable = true;
    hostname = "nixos"
  }

  # Set your time zone.
  time.timeZone = "Europe/Paris"; # Replace with your time zone

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  # Enable Hyprland
  programs.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    # Recommended if you have issues with XWayland fractional scaling:
    # xwayland.enable = true;
  };

  # Configure Hyprland environment variables for legacyRender
  environment.sessionVariables = {
    HYPRLAND_LEGACY_RENDERER = "1";
    # WLR_NO_HARDWARE_CURSORS = "1"; # Uncomment if you have cursor issues
    # XDG_CURRENT_DESKTOP = "Hyprland";
    # XDG_SESSION_TYPE = "wayland";
    # XDG_SESSION_DESKTOP = "Hyprland";
  };

  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this:
    #jack.enable = true;
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.taka = { # Replace 'your-username' with your actual username
    isNormalUser = true;
    description = "Taka";
    extraGroups = [ "networkmanager" "wheel" "video" ]; # Add user to necessary groups
    packages = with pkgs; [
      firefox
      kitty # A popular terminal emulator
      # Add other packages you want to install for this user
    ];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    git
    # Add other system-wide packages here
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?

}