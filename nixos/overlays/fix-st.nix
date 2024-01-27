self: super: {
  st = super.st.overrideAttrs (oldAttrs: {
    patches = [ /home/yuwki0131/myconfig/config/nixos/overlays/custom-config.patch ];
  });
}
