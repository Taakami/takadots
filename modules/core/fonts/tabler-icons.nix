{ lib, stdenv, fetchurl, unzip }:

stdenv.mkDerivation rec {
  pname = "tabler-icons-webfont";
  version = "3.34.0";

  # Fetch from npm registry as a tarball
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
    mkdir -p $out/share/fonts/{truetype,woff,woff2}/tabler-icons
    
    cd package/dist
    
    # Install font files from dist/fonts/
    if [ -d "fonts" ]; then
      # Install TTF files
      find fonts -name "*.ttf" -exec cp {} $out/share/fonts/truetype/tabler-icons/ \;
      
      # Install WOFF files (mainly for web use)
      find fonts -name "*.woff" -exec cp {} $out/share/fonts/woff/tabler-icons/ \;
      
      # Install WOFF2 files (mainly for web use)
      find fonts -name "*.woff2" -exec cp {} $out/share/fonts/woff2/tabler-icons/ \;
    fi
    
    runHook postInstall
  '';

  meta = with lib; {
    description = "Tabler Icons as webfont - over 5800+ free MIT-licensed high-quality SVG icons";
    homepage = "https://tabler-icons.io/";
    license = licenses.mit;
    platforms = platforms.all;
    maintainers = [ ]; # Add your name here if you want
  };
}