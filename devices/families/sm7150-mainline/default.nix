{ lib, pkgs, ... }:

{
  mobile = {
    boot.stage-1 = {
      kernel.package = pkgs.callPackage ./kernel { };
    };
    hardware.soc = "qualcomm-sm7150";
    system = {
      android = {
        ab_partitions = lib.mkDefault false;
        bootimg.flash = {
          offset_base = "0x00000000";
          offset_kernel = "0x00008000";
          offset_ramdisk = "0x01000000";
          offset_second = "0x00000000";
          offset_tags = "0x00000100";
          pagesize = "4096";
        };
      };
      type = "android";
    };
  };
}
