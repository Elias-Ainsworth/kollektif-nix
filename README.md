# kollektif-nix

- kollektif-nix is simply Kollektif Sans packaged for nix.
- All credit goes to the original creator of kollektif. All credit for the font goes to [Dogu Kaya](https://www.behance.net/dogukaya).

#### DISCLAIMER: The version and license I set in package.nix are most likely wrong, if you happen to know the correct version/license please do open a PR or email me.

## Installation

### NixOS
```nix
# flake.nix
{
  inputs.kollektif = {
    url = "github:elias-ainsworth/kollektif-nix";
    inputs.nixpkgs.follows = "nixpkgs"; # override this repo's nixpkgs snapshot
  };
}
```

Then, include it in your `environment.systemPackages` or `home.packages` by referencing the input:
```nix
inputs.kollektif.packages.${pkgs.system}.default
  
```

## Usage

Declare `Kollektif` as your font wherever you need it (I don't really have to elaborate here...*right?*).

## Credits
- As always my dumbass would not have been able complete this without the helpful people over at Vimjoyer's server...and I basically copied the structure for flake.nix and this README from Grandmaster Iynaix's [focal](https://github.com/iynaix/focal), do check it out it's great.
- Further thanks to Master [diniamo](https://github.com/diniamo) for helping me fix some extremely stupid errors I made.
