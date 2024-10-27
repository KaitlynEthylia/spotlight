{
  description = "idfk i'll do this later";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs }: let
    forAllSystems = function: nixpkgs.lib.genAttrs [
      "x86_64-linux"
      "aarch64-linux"
    ] (system: function (import nixpkgs { inherit system; }));
    cargoToml = with builtins; fromTOML (readFile ./Cargo.toml);
  in {
    packages = forAllSystems (pkgs: let 
      spotlight = features: pkgs.rustPlatform.buildRustPackage {
        pname = cargoToml.package.name;
        version = cargoToml.package.version;

        src = ./.;
        cargoLock.lockFile = ./Cargo.lock;

        nativeBuildInputs = with pkgs; [
          pkg-config
        ];

        buildInputs = with pkgs; [
          gtk4
        ];

        cargoBuildFlags = with builtins;
        if length features > 0 then [
          "--features"
          (concatStringsSep "," features)
        ] else [];

        meta = {
          description = cargoToml.package.description;
          homepage = cargoToml.package.repository;
          mainProgram = "spotlight";
          # TODO
          # license = pkgs.lib.licenses.json
        };
      };
    in rec {
      safe = spotlight [];
      unsafe = spotlight [ "unsafe" ];
      default = safe;
    });

    apps = forAllSystems (pkgs: builtins.mapAttrs
      (_: pkg: {
        type = "app";
        program = pkgs.lib.getExe pkg;
      })
      self.packages.${pkgs.system});

    devShells = forAllSystems (pkgs: {
      default = with pkgs; mkShell {
        buildInputs = [
          cargo rustc rustfmt pre-commit clippy
          gtk4 pkg-config
        ];
        RUST_SRC_PATH = rustPlatform.rustLibSrc;
      };
    });
  };
}
