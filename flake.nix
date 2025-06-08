{
  description = "NixOS configuration";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      hardwareConfig =
        if builtins.pathExists ./.github/workflows/testfiles/hardware-configuration.nix
        then ./testfiles/hardware-configuration.nix
        else /etc/nixos/hardware-configuration.nix;
    in {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./nixos/configuration.nix
        ];
      };
    };
}
