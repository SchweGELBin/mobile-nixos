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
    tag = "v6.16.0_rc3";
    hash = "sha256-KJfHY7pksy+1jTkvE3KC2AAAHcdVHlCfHhv412ixbcc=";
  };
  version = "6.16.0-rc3";
}
