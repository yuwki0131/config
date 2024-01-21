self: super: {
  st = super.st.overrideAttrs (oldAttrs: {
    patches = [ /home/yuwki0131/myconfig/st/custom-config.patch ];
  });
}
