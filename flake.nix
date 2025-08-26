{
  description = "Midstall Software Website";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";

  nixConfig = rec {
    trusted-public-keys = [ "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY=" "cache.garnix.io:CTFPyKSLcx5RMJKfLo5EEPUObbA78b0YQ2DTCJXqr9g=" ];
    substituters = [ "https://cache.nixos.org" "https://cache.garnix.io" ];
    trusted-substituters = substituters;
  };

  outputs = { self, nixpkgs }:
    let
      inherit (nixpkgs) lib;
    in
    {
      devShells = lib.mapAttrs (system: pkgs: {
        default = pkgs.mkShell rec {
          pname = "midstallsw-website";
          version = "git+${self.shortRev or "dirty"}";
          name = "${pname}-${version}";

          packages = with pkgs; [ hugo go ];
        };
      }) nixpkgs.legacyPackages;
    };
}
