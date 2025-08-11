{
  lib,
  stdenv,
  fetchFromGitHub,
  pkg-config,
  raylib,
  wayland,
  wayland-protocols,
  libxkbcommon,
  xorg,
  libGL,
  alsa-lib,
}:
stdenv.mkDerivation rec {
  pname = "hellpaper";
  version = "unstable-2025-06-28";

  src = fetchFromGitHub {
    owner = "danihek";
    repo = "hellpaper";
    rev = "main";
    sha256 = "sha256-RQuvEZEi1IX9yop+rKc+rxq+qM2mivL8FTZH6KUwPgw=";
  };

  nativeBuildInputs = [
    pkg-config
  ];

  buildInputs = [
    raylib
    # Wayland support
    wayland
    wayland-protocols
    libxkbcommon
    # Graphics
    libGL
    # Audio
    alsa-lib
  ];

  # Use system raylib instead of bundled version
  preBuild = ''
    # Remove raylib submodule if it exists
    rm -rf raylib || true
    
    # Set up build environment to use system raylib
    export CFLAGS="-I${raylib}/include $CFLAGS"
    export LDFLAGS="-L${raylib}/lib -lraylib $LDFLAGS"
  '';

  # Build using default make target
  buildPhase = ''
    runHook preBuild
    
    make RAYLIB_LIBTYPE=SHARED
    
    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall
    
    mkdir -p $out/bin
    
    # Install Wayland binary
    cp hellpaper $out/bin/hellpaper
    
    runHook postInstall
  '';

  meta = with lib; {
    description = "A wallpaper picker for Linux built with Raylib";
    longDescription = ''
      Hellpaper is a wallpaper picker for Linux featuring multiple animated 
      layouts, live search, full-screen preview, GPU-accelerated effects, 
      and total customization. Supports both Wayland and X11.
    '';
    homepage = "https://github.com/danihek/hellpaper";
    license = licenses.mit; # Update based on actual license
    maintainers = [ ];
    platforms = platforms.linux;
    mainProgram = "hellpaper";
  };
}