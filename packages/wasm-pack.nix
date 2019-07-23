
{pkgs ? import <nixpkgs> {}}:
  pkgs.rustPlatform.buildRustPackage rec {
    name = "wasm-pack";
    version = "0.8.1";

    src = pkgs.fetchFromGitHub {
      owner = "rustwasm";
      repo = "wasm-pack";

      rev = "b9eb7bcf2ed11b0f7ce78f21b1e389ecbcc36cfe";
      sha256 = "1z66m16n4r16zqmnv84a5jndr5x6mdqdq4b1wq929sablwqd2rl4";
    };

    buildInputs =
      [
        pkgs.pkgconfig
        pkgs.openssl
      ];

    cargoSha256 = "1xdx0gjqd4zyhnp72hz88rdmgry1m7rcw2j73lh67vp08z74y54y";

    doCheck = false;

    meta = with pkgs.lib; {
      description = "Tool to build and work with rust generated WebAssembly";
      homepage = "https://github.com/rustwasm/wasm-pack";
      licence = licences.asl20;
    };
  }
