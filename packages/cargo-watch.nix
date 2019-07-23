
{pkgs ? import <nixpkgs> {}}:
  pkgs.rustPlatform.buildRustPackage rec {
    name = "cargo-watch";
    version = "7.2.1";

    src = pkgs.fetchFromGitHub {
      owner = "passcod";
      repo = "cargo-watch";

      # Head of the master branch
      # rev = "ac832c015a33e8fb28bc128eefe3c4a6975a8914";
      # sha256 = "1zzfzgfcsgy0fklindbs9k27nsw8rzdr58wg8i6gb2jqspm42f2h";

      # version 7.2.1
      rev = "5f59c4c182425c3078b608dd0be44084fb915e25";
      sha256 = "13zjsypj0ay9xb5j5fhl3yfn57kp2yngl138vmnyfk1h7gjdxpk3";
    };

    # Head
    # cargoSha256 = "0bmf1pdh4zgsk0qn06h53l8dkk7jc67x0wqc3s0zcr7ln9lbagv6";

    # 7.2.1
    cargoSha256 = "0rbb55m6dh06pgn59gl1ggbknhj580dpg3qi6nyhm3lilvwams3a";

    doCheck = false;

    meta = with pkgs.lib; {
      description = "Cargo utility that watches for changes in the source code
      to run commands";
      homepage = "https://github.com/passcod/cargo-watch";
      licence = licences.cc0;
    };
  }
