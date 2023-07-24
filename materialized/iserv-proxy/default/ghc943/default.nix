{
  pkgs = hackage:
    {
      packages = {
        bytestring.revision = (((hackage.bytestring)."0.11.3.1").revisions).default;
        directory.revision = (((hackage.directory)."1.3.7.1").revisions).default;
        filepath.revision = (((hackage.filepath)."1.4.2.2").revisions).default;
        network.revision = import ./cabal-files/network.nix;
        network.flags.devel = false;
        ghc-bignum.revision = (((hackage.ghc-bignum)."1.3").revisions).default;
        ghc-prim.revision = (((hackage.ghc-prim)."0.9.0").revisions).default;
        ghc-heap.revision = (((hackage.ghc-heap)."9.4.3").revisions).default;
        containers.revision = (((hackage.containers)."0.6.6").revisions).default;
        base.revision = (((hackage.base)."4.17.0.0").revisions).default;
        time.revision = (((hackage.time)."1.12.2").revisions).default;
        hsc2hs.revision = import ./cabal-files/hsc2hs.nix;
        hsc2hs.flags.in-ghc-tree = false;
        deepseq.revision = (((hackage.deepseq)."1.4.8.0").revisions).default;
        rts.revision = (((hackage.rts)."1.0.2").revisions).default;
        ghci.revision = (((hackage.ghci)."9.4.3").revisions).default;
        template-haskell.revision = (((hackage.template-haskell)."2.19.0.0").revisions).default;
        binary.revision = (((hackage.binary)."0.8.9.1").revisions).default;
        ghc-boot.revision = (((hackage.ghc-boot)."9.4.3").revisions).default;
        process.revision = (((hackage.process)."1.6.16.0").revisions).default;
        unix.revision = (((hackage.unix)."2.7.3").revisions).default;
        transformers.revision = (((hackage.transformers)."0.5.6.2").revisions).default;
        libiserv.revision = (((hackage.libiserv)."9.4.3").revisions).default;
        array.revision = (((hackage.array)."0.5.4.0").revisions).default;
        ghc-boot-th.revision = (((hackage.ghc-boot-th)."9.4.3").revisions).default;
        pretty.revision = (((hackage.pretty)."1.1.3.6").revisions).default;
        };
      compiler = {
        version = "9.4.3";
        nix-name = "ghc943";
        packages = {
          "ghc-boot" = "9.4.3";
          "pretty" = "1.1.3.6";
          "array" = "0.5.4.0";
          "bytestring" = "0.11.3.1";
          "filepath" = "1.4.2.2";
          "ghc-heap" = "9.4.3";
          "ghc-prim" = "0.9.0";
          "ghc-boot-th" = "9.4.3";
          "base" = "4.17.0.0";
          "time" = "1.12.2";
          "process" = "1.6.16.0";
          "ghc-bignum" = "1.3";
          "directory" = "1.3.7.1";
          "rts" = "1.0.2";
          "libiserv" = "9.4.3";
          "transformers" = "0.5.6.2";
          "template-haskell" = "2.19.0.0";
          "ghci" = "9.4.3";
          "deepseq" = "1.4.8.0";
          "unix" = "2.7.3";
          "binary" = "0.8.9.1";
          "containers" = "0.6.6";
          };
        };
      };
  extras = _hackage:
    { packages = { iserv-proxy = ./.plan.nix/iserv-proxy.nix; }; };
  modules = [
    ({ lib, ... }:
      { packages = { "iserv-proxy" = { flags = {}; }; }; })
    ({ lib, ... }:
      {
        packages = {
          "filepath".components.library.planned = lib.mkOverride 900 true;
          "pretty".components.library.planned = lib.mkOverride 900 true;
          "bytestring".components.library.planned = lib.mkOverride 900 true;
          "ghc-prim".components.library.planned = lib.mkOverride 900 true;
          "array".components.library.planned = lib.mkOverride 900 true;
          "binary".components.library.planned = lib.mkOverride 900 true;
          "ghc-boot-th".components.library.planned = lib.mkOverride 900 true;
          "rts".components.library.planned = lib.mkOverride 900 true;
          "unix".components.library.planned = lib.mkOverride 900 true;
          "hsc2hs".components.exes."hsc2hs".planned = lib.mkOverride 900 true;
          "directory".components.library.planned = lib.mkOverride 900 true;
          "time".components.library.planned = lib.mkOverride 900 true;
          "iserv-proxy".components.library.planned = lib.mkOverride 900 true;
          "network".components.library.planned = lib.mkOverride 900 true;
          "ghc-bignum".components.library.planned = lib.mkOverride 900 true;
          "process".components.library.planned = lib.mkOverride 900 true;
          "template-haskell".components.library.planned = lib.mkOverride 900 true;
          "ghci".components.library.planned = lib.mkOverride 900 true;
          "ghc-boot".components.library.planned = lib.mkOverride 900 true;
          "ghc-heap".components.library.planned = lib.mkOverride 900 true;
          "transformers".components.library.planned = lib.mkOverride 900 true;
          "libiserv".components.library.planned = lib.mkOverride 900 true;
          "deepseq".components.library.planned = lib.mkOverride 900 true;
          "base".components.library.planned = lib.mkOverride 900 true;
          "iserv-proxy".components.exes."iserv-proxy-interpreter".planned = lib.mkOverride 900 true;
          "containers".components.library.planned = lib.mkOverride 900 true;
          "iserv-proxy".components.exes."iserv-proxy".planned = lib.mkOverride 900 true;
          };
        })
    ];
  }