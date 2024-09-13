{
  description = "pallaspp.github.io";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = inputs@{ flake-parts, nixpkgs, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      perSystem = { pkgs, self', system, ... }:
        # let
        #   gems = pkgs.bundlerEnv {
        #     name = "gems-for-pallaspp.github.io";
        #     gemdir = ./.;
        #   };
        # in
        {
          devShells.default = pkgs.mkShell {
            packages = [ (pkgs.ruby.withPackages (ps: with ps; [ jekyll ])) pkgs.bundix ];
          };
          # devShells.default = pkgs.mkShell {
          #   buildInputs = [ gems gems.wrappedRuby gems.bundler ];
          # };
        };
    };
}
