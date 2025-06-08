{ config, lib, pkgs, modulesPath, ... }:
{
  fileSystems."/" = {
    device = "none";
    fsType = "tmpfs";
  };
}
