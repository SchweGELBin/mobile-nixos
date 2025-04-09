{
  lib,
  fetchFromGitHub,
  runCommand,
}:

let
  baseFw = fetchFromGitHub {
    owner = "sm7150-mainline";
    repo = "firmware-xiaomi-davinci";
    rev = "d2db810c4a040cc71a6c67d0500158ed29fee678";
    sha256 = "sha256-GXEMMYaqrdT8mZlMD/H12017vNaiRNB34m9EoJG2or8=";
  };
in
runCommand "xiaomi-sm7150-firmware"
  {
    inherit baseFw;
    # We make no claims that it can be redistributed.
    meta.license = lib.licenses.unfree;
  }
  ''
    mkdir -p $out/lib/firmware
    cp -r $baseFw/lib/firmware/* $out/lib/firmware/
    chmod +w -R $out
  ''
