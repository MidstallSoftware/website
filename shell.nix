with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "midstall-website";
    buildInputs = [
        nodejs-16_x
    ];
    shellHooks = ''
        export PATH="$PWD/node_modules/.bin/:$PATH"
        alias run="npm run"
    '';
}