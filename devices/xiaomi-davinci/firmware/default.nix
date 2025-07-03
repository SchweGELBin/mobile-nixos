{
  lib,
  fetchFromGitHub,
  runCommand,
}:

let
  baseFw = fetchFromGitHub {
    owner = "sm7150-mainline";
    repo = "firmware-xiaomi-davinci";
    rev = "6532694920dd05ee7d930fe6d3ede74d2b9ea60d";
    sha256 = "sha256-VfGFxKJ3oIXiLfZiw8NkK4adPfVTFPj5236HR3YsNew=";
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
