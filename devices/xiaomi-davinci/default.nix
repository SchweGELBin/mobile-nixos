{ pkgs, ... }:

{
  imports = [
    ../families/sm7150-mainline
  ];

  mobile = {
    device = {
      firmware = pkgs.callPackage ./firmware { };
      identity = {
        manufacturer = "Xiaomi";
        name = "Xiaomi Mi 9T";
      };
      name = "xiaomi-davinci";
      supportLevel = "supported";
    };
    hardware = {
      ram = 1024 * 6;
      screen = {
        height = 2340;
        width = 1080;
      };
    };
  };
}
