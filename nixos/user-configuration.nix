# User configuration

{ pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with 'passwd'.
  users.users.yuwki0131 = {
    isNormalUser = true;
    description = "yuwki0131";
    extraGroups = [ "wheel" "networkmanager" "vboxusers" ];
    packages = with pkgs; [
    ];
    openssh.authorizedKeys.keys = [ "your-ssh-public-key" ];
  };

  networking.hostName = "yuwki0131-xt-m07";

  # Enable automatic login for the user.
  services.displayManager.autoLogin.enable = true;

}
