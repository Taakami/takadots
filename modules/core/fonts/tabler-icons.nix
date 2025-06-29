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
    
    # Create font directories
    mkdir -p $out/share/fonts/{truetype,woff,woff2}/
    
    cd package
    
    # Find and install the specific Tabler Icons font files
    find . -name "tabler-icons.ttf" -exec cp {} $out/share/fonts/truetype/ \;
    
    # Find and install the specific WOFF files
    find . -name "tabler-icons.woff" -exec cp {} $out/share/fonts/woff/ \;
    
    # Find and install the specific WOFF2 files
    find . -name "tabler-icons.woff2" -exec cp {} $out/share/fonts/woff2/ \;
    
    runHook postInstall
  '';

  meta = with lib; {
    description = "Tabler Icons as webfont - over 5800+ free MIT-licensed high-quality SVG icons";
    homepage = "https://tabler-icons.io/";
    license = licenses.mit;
    platforms = platforms.all;
  };
}