# CI stand-in for /etc/nixos/user-configuration.nix

{ ... }:

{
  users.users.nixos = {
    isNormalUser = true;
  };

  networking.hostName = "nixos";
}
