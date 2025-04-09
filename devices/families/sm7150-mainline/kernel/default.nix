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
    tag = "v6.14.0";
    hash = "sha256-S5RdZwLHwhk9tquVWUIE3+TtNE4JsvnPjA1h7AVo3sE=";
  };
  version = "6.14.0";
}
