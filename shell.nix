with import <nixpkgs> { };

with pkgs;
stdenv.mkDerivation {
  name = "waya-shell";
  nativeBuildInputs = [
    at-spi2-core.dev
    dbus.dev
    epoxy.dev
    glib.dev
    gtk3.dev
    libdatrie.dev
    libselinux.dev
    libsepol.dev
    libthai.dev
    libxkbcommon.dev
    pcre.dev
    pkgconf
    util-linuxMinimal.dev
    xorg.libXdmcp.dev
    xorg.libXtst
  ];
}
