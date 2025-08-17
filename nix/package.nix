{
  cairo,
  gdk-pixbuf,
  glib,
  gtk4,
  gtk4-layer-shell,
  pango,
  pkg-config,
  rustPlatform,
  protobuf,
}:
rustPlatform.buildRustPackage rec {
  pname = "walker";
  version = "1.0.0";
  src = ../.;

  cargoHash = "sha256-bQx+86iYkc+MTDNZMF9Kkj2DUzvIzmiVedPwXkomnmM=";

  buildInputs = [
    glib
    gdk-pixbuf
    cairo
    pango
    gtk4
    gtk4-layer-shell
  ];

  nativeBuildInputs = [
    pkg-config
    protobuf
  ];
}
