# MoErgo Glove80 Custom Configuration for ZMK

Forked from [the official MoErgo fork of zmk-config](https://github.com/moergo-sc/glove80-zmk-config).

## Building

Install [Nix](https://nixos.org) according to their instructions.

Then:

```sh
nix-build config -o combined
```

which will spit out the firmware into `combined/glove80.uf`. Put the keyboard into bootloader mode, then flash it with

```sh
./flash.sh
```

## Bootloader Mode

Plug in and power up each half while holding the outermost bottom key and the key just above the home row on the middle finger (E and I by default).

[Documentation.](https://docs.moergo.com/glove80-user-guide/customizing-key-layout/#putting-glove80-into-bootloader-for-firmware-loading)

## Repo Layout

This repo includes a submodule import of [my fork of the official MoErgo fork of ZMK](https://github.com/seansfkelley/zmk). This makes it easier to build locally, as above, though the instructions from the MoErgo fork still apply (that is, those that build only on GitHub Actions). Make sure to keep the submodule updated if you make changes.
