{
  mobile-nixos,
  fetchFromGitHub,
  ...
}:

mobile-nixos.kernel-builder {
  configfile = ./config.aarch64;
  src = fetchFromGitHub {
    owner = "sm7150-mainline";
    repo = "linux";
    tag = "v6.18.0";
    hash = "sha256-3D3btHX/O9S+bVihW4TvWfZEdrVLLrxnHqf2aVU2ooc=";
  };
  version = "6.18.0";
}
