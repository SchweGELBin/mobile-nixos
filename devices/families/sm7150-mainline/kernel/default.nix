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
    tag = "v6.15.0_rc2";
    hash = "sha256-n7gkrOv1Dvx+NkRMrXHzeiCyOkRv1UK/NY6px0F8ibk=";
  };
  version = "6.15.0-rc2";
}
