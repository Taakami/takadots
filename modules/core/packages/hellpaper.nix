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
    # Image format support
    libpng
    libjpeg
    libwebp
    zlib
  ];

  # Use system raylib instead of bundled version
  preBuild = ''
    # Remove raylib submodule if it exists
    rm -rf raylib || true
    
    # Set up build environment to use system raylib and image libraries
    export CFLAGS="-I${raylib}/include -I${libpng.dev}/include -I${libjpeg.dev}/include -I${libwebp}/include $CFLAGS"
    export LDFLAGS="-L${raylib}/lib -lraylib -L${libpng.out}/lib -lpng -L${libjpeg.out}/lib -ljpeg -L${libwebp}/lib -lwebp -lz $LDFLAGS"
    export PKG_CONFIG_PATH="${raylib}/lib/pkgconfig:${libpng.dev}/lib/pkgconfig:${libjpeg.dev}/lib/pkgconfig:${libwebp}/lib/pkgconfig:$PKG_CONFIG_PATH"
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