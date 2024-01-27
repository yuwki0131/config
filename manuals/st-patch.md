# patch manual for st

```
$ git clone git@github.com:Shourai/st.git
$ cd st
$ git diff -u <source-filename> <fixed-filename> > <patch-filename>
$ cp <patch-filename> ~/myconfig/config/nixos/overlays/

```
