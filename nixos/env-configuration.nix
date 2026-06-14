{ config, pkgs, ... }:

{
  security.sudo.wheelNeedsPassword = false; # wheel group user has not been required password.

  networking.firewall = {
    allowedTCPPorts = [ ];
    allowedUDPPorts = [ ];
  };
}
