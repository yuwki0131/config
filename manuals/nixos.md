# nixos maintenance

## garbage collection

30日以前の世代を削除

```
$ sudo nix-collect-garbage --delete-older-than 30d
```

普通のGC


```
$ sudo nix-collect-garbage
```
