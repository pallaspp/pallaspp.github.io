{
  description = "pallaspp.github.io";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = inputs@{ flake-parts, nixpkgs, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      perSystem = { pkgs, self', system, ... }:
        let
          ruby = pkgs.ruby.withPackages (ps: with ps; [ jekyll ]);
          # gems = pkgs.bundlerEnv {
          #   name = "gems-for-pallaspp.github.io";
          #   gemdir = ./.;
          # };
        in
        {
          devShells.default = pkgs.mkShell {
            packages = [ ruby ];
          };
          # devShells.default = pkgs.mkShell {
          #   buildInputs = [ gems gems.wrappedRuby gems.bundler ];
          # };
        };
    };
}
