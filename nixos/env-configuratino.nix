
{ config, pkgs, ... }:

{
  security.sudo.wheelNeedsPassword = false; # wheel group user has not been required password.

  networking.firewall = {
    allowedTCPPorts = [ 17500 ];
    allowedUDPPorts = [ 17500 ];
  };
  # enable dropbox
  # source from: https://nixos.wiki/wiki/Dropbox
  systemd.user.services.dropbox = {
    restartIfChanged = true;
    enable = true;
    serviceConfig = {
      ExecStart = "${pkgs.dropbox}/bin/dropbox";
      PassEnvironment = "DISPLAY";
    };
  };
}
