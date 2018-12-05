with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "env";
  buildInputs = [
    elixir
    nodejs-9_x
  ];
}
