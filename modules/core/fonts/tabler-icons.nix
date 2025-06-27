{ lib, stdenv, fetchurl, unzip }:

stdenv.mkDerivation rec {
  pname = "tabler-icons-webfont";
  version = "3.34.0";

  src = fetchurl {
    url = "https://registry.npmjs.org/@tabler/icons-webfont/-/icons-webfont-${version}.tgz";
    sha256 = "sha256-C2zG2aeDwApjMPnttyOxBjfrOwS+IGWGDrKONQrDXKs="; # You'll need to update this hash after first build attempt
  };

  nativeBuildInputs = [ unzip ];

  unpackPhase = ''
    runHook preUnpack
    tar -xzf $src
    runHook postUnpack
  '';

  installPhase = ''
    runHook preInstall
    
    # Debug: let's see what's actually in the package
    echo "=== Package contents ==="
    find package -type f | head -20
    echo "=== Looking for font files ==="
    find package -name "*.ttf" -o -name "*.woff" -o -name "*.woff2" 2>/dev/null || echo "No font files found"
    
    # Create font directories
    mkdir -p $out/share/fonts/truetype/tabler-icons
    mkdir -p $out/debug
    
    # Copy everything to debug directory so we can inspect
    cp -r package/* $out/debug/
    
    # Try to find and install any font files
    find package -name "*.ttf" -exec cp {} $out/share/fonts/truetype/tabler-icons/ \; 2>/dev/null || echo "No TTF files found"
    
    runHook postInstall
  '';

  meta = with lib; {
    description = "Tabler Icons as webfont - over 5800+ free MIT-licensed high-quality SVG icons";
    homepage = "https://tabler-icons.io/";
    license = licenses.mit;
    platforms = platforms.all;
  };
}