with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "nix-ide";
  buildInputs = [
    git
    python36Full
    python36Packages.virtualenv
    python36Packages.pip
    python36Packages.watchdog
    tmuxp
    libxml2
    libxslt
    libffi
    openssl
    libzip
    zlib
    bashInteractive
    bashCompletion
    stdenv
  ];
  src = null;
  shellHook = ''
    unset http_proxy
    unset TMUX
    tmuxp load tmuxp.yaml
  '';
}

